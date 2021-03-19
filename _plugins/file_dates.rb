module FileDates
    class Generator < Jekyll::Generator
        def generate(site)
            site.each_site_file do |document|
                if File.exists?(document.path)
                    document.data['date_modified'] = File.stat(document.path).mtime
                else
                    document.data['date_modified'] = nil
                end
            end
        end
    end
end
