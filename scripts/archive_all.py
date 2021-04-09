import os.path
import json
import multiprocessing
import time
import requests
import datetime
import pytz
import threading
import urllib.parse

seconds_per_minute = 60
requests_allowed_per_minute = 15 # source: https://archive.org/details/toomanyrequests_20191110
safety_factor = 1
seconds_between_requests = seconds_per_minute/(requests_allowed_per_minute - safety_factor)

archive_cache_file_path = "tmp/.archivist/cache.json"
archive_interval = datetime.timedelta(hours = 13)
archive_datetime_format = "%Y-%m-%d %H:%M:%S %z"
wayback_datetime_format = "%Y%m%d%H%M%S"
working_timezone = pytz.timezone('America/Denver')

def create_archive_cache_file_unsafely():
    os.makedirs(os.path.dirname(archive_cache_file_path), exist_ok = True)
    with open(archive_cache_file_path, "w") as archive_cache_file:
        archive_cache_file.write("{" + "}")

def datetime_is_long_ago(datetime_str: str):
    the_datetime = datetime.datetime.strptime(datetime_str, archive_datetime_format)
    return (datetime.datetime.now(tz = working_timezone) - the_datetime) > archive_interval

def url_needs_archiving(url: str, archivist_cache_object):
    if not url.startswith("http"):
        False
    elif not url in archivist_cache_object:
        return True
    elif datetime_is_long_ago(archivist_cache_object[url]["last_archive"]):
        return True
    else:
        return False

def archive_url(url: str, archive_cache_lock):
    response = requests.get("https://web.archive.org/save/" + url,
        allow_redirects = False
    )
    
    if not 'location' in response.headers:
        print(f"archiving {url} did not redirect.\ncode: {response.status_code}\nresponse body: {response.text}")
        return
    
    parsed_archive_location = urllib.parse.urlparse(response.headers['location'])
    archive_time_str = parsed_archive_location.path.split("/")[2]
    archive_time = datetime.datetime.strptime(archive_time_str, wayback_datetime_format)
    archive_time = pytz.utc.localize(archive_time)
    
    with archive_cache_lock:
        with open(archive_cache_file_path, "r+") as archive_cache_file:
            archivist_cache_object = json.load(archive_cache_file)
            archivist_cache_object |= {
                url: {
                    "last_archive": archive_time
                }
            }
            archive_cache_file.seek(0)
            archive_cache_file.truncate(0)
            json.dump(archivist_cache_object, archive_cache_file)
    
    print(f"{url} archived to {response.headers['location']}")

def main():
    archive_cache_lock = multiprocessing.Lock()
    process_list = list()
    
    if not os.path.exists(archive_cache_file_path):
        with archive_cache_lock:
            create_archive_cache_file_unsafely()
    else:
        with open(archive_cache_file_path) as archive_cache_file:
            archivist_cache_object = json.load(archive_cache_file)
    
    with open("tmp/.htmlproofer/cache.log") as html_proofer_log_file:
        html_proofer_cache_object = json.load(html_proofer_log_file)
    
    for url in html_proofer_cache_object.keys():
        if url_needs_archiving(url, archivist_cache_object):
            print(f"queueing archive of {url}")
            new_process = multiprocessing.Process(
                target = archive_url,
                args = (url, archive_cache_lock)
            )
            new_process.start()
            process_list.append(new_process)
            print(f"starting a sleep of {seconds_between_requests} seconds")
            time.sleep(seconds_between_requests)
        else:
            print(f"skipping {url}")
    
    for each_process in process_list:
        each_process.join()


if __name__ == '__main__':
    main()
