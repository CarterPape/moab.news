---
layout: post
title: "Grand and Moab want to see changes to UTV regulations, and so do some other surprise advocates"
date: 2020-12-04 15:30 -0700
subtitle: 
description: 
image: 
---


Last time I wrote about [the city and county's the legislative priorities](https://substack.moab.news/p/covid-19-is-overwhelming-our-contact-tracing-the), I wrote about TRT reform. There is one other topic that is going to be highly relevant for the county in the state's upcoming legislative session: UTVs.

There is a third topic the county is trying to lobby on, and it's relevant outside the legislative session: The proposed Book Cliffs Highway. I'll get to that another day.

For now: UTVs. But I only have one, unconfirmed update, a lead on another story, and [a meeting to rewatch][start of UTV discussion] because I again spent most of my day working on the newsletter because I am a bad kid. I'll follow up Monday with more on UTVs.

## Remember the guy who tried to ban Moab's plastic bag ban? He's now on the mayor's side toward regulating UTV noise.

This is all according to Moab Mayor Emily Niehaus at this point because I have not yet confirmed it with the dude involved, but accoding to her, Utah Rep. Mike McKell (R-Spanish Fork) is backing legislation proposed by the city to regulate UTVs on city streets.

I do not know the details of what the bill would entail, but if he is indeed sympathetic to the city's cause, that would be a fun and interesting story of apparent turnabout.

Niehaus said that McKell became persuaded over the matter during on a visit by multiple legislators to Moab earlier this year, which Niehaus organized. According to her, hearing the roar of the machines on the streets led to a little lightbulb moment for him. I'll see if that's truly the case when I get a hold of him.

## Two groups that lobby for off-road vehicle users want Utah to take UTVs off the streets.

In yet another story in the vein of "unexpected advocates," two interest groups that do lobbying at the national level for off-road vehicle users published position papers against allowing UTVs on roads. One is by the [Specialty Vehicle Institute of America]({% include asset_path file_name="SVIA ATV On-Road Opposition Position 2020 (002).pdf" %}); the other is by the [Recreational Off-Highway Vehicle Association]({% include asset_path file_name="ROHVA On Road Opposition Position 2020.pdf" %}).

These position papers are in direct contrast with the position of [UTV Utah](https://www.utvutah.com), a lobbying group that successfully got Utah to pass a law allowing UTVs on streets across the state and is now trying to [get them [allowed into national parks](https://www.utvutah.com/read-our-letter-to-secretary-bernhardt/). They [got close last year](https://www.sltrib.com/news/environment/2019/09/28/feds-open-utahs-national/), but the [change was rescinded](https://www.sltrib.com/news/environment/2019/10/25/feds-shift-gears-now-say/) after being announced, in large part because of explosive outcry in Moab regarding the change.

--------

## The airport is changing names.

Canyonlands Field Airport is going to become Canyonlands Regional Airport. [The branding hasn't yet changed](https://www.grandcountyutah.net/263/Airport) on the county's website, and I have not yet gotten a hold of Airport Director Andy Solsvig to ask when the branding would actually change, but it sounds from the [discussion of the matter](https://youtu.be/JYtp7s1wIeI?t=14034) that it will just phase in over time.

The three-letter identifier that the airport has, CNY, will stay the same. I was disappointed to hear that the county did not want to change the name of the airport to something [more creative]({% include asset_path file_name="48U.pdf" %}), as Solsvig suggested was possible, but c'est la vie.

--------------------

## Another technical memo about the website.

[`moab.news`](https://moab.news/) is live… but mostly empty. I still have a lot of other steps to follow before I am writing and sending the newsletter the way I want to (i.e. before I can leave Substack), but it’s nice to have a live website that I made all by myself online. And it only took me until 1 p.m.!

Something I need to figure out is an efficient way to serve or optimize images. I want to have the original quality image be the only file that I have to worry about maintaining myself, and wherever I drop the original in, I want the optimized version (or versions) to just generate automatically. I can make that myself, so add that to the list of things to work on.

I’m thinking I’ll use [ImageMagick](https://imagemagick.org/) for image processing, and I could possibly integrate it as a [Jekyll plugin](https://jekyllrb.com/docs/plugins/) to do the image processing as part of the site building process so that I can simply drop in my full-resolution photos, add link to them in posts, and go to preview and publish the site without thinking about resizing and creating multiple image versions and sizes. Nice.

As I’m thinking about this, I am also realizing that likely the reason I have been displeased in the past with the page speed of [`carterpape.com`](https://carterpape.com/) is likely solely to do with the time it takes to load images. An analysis by PageSpeed Insights reveals this to be [exactly the case](https://developers.google.com/speed/pagespeed/insights/?url=http://carterpape.com&tab=mobile).

I am discovering that there are some oddities with how S3 _does not_ do URI rewrites that GitHub Pages and the default [Jekyll command line tool](https://jekyllrb.com/docs/usage/) (which comes with an extremely lightweight server) fixes. For example, if I visit `moab.news/index`, I get a 404 page when I would like to get the index page, which I know is there. Meanwhile, if I do `carterpape.com/index`, I get the page I expect to see.

I could potentially fix this with [redirects](https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html) (which I think is a better solution than rewrites, so that typing in `moab.news/index` instead goes to `moab.news`), but I would have to create those rules myself and maybe backward engineer what Jekyll is doing on this front to emulate it on S3. Or, I could recant on my past commitment to use S3 and put `moab.news` on GitHub Pages.

But then that also comes with a tradeoff because it preempts any opportunity for me to [use custom plugins](https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/about-github-pages-and-jekyll#plugins). I don’t necessarily _need_ to use custom plugins, but it might be nice.

Probably, for now, I will limp along with the static parts of my site hosted on S3, do some speed testing between S3 and GitHub Pages, and figure out the path forward from there.

Also: There is [a Jekyll plugin that](https://github.com/benbalter/jekyll-titles-from-headings), if you don’t specify a title in [the YAML Front Matter](https://jekyllrb.com/docs/front-matter/) of a page or post the plugin, uses that first heading in the file as the title (as long as the heading isn’t preceded by other content). I want to make that but for the featured image of a post or page, only overriding the default image for a page or post if the post includes an image and doesn’t have an image specified in the front matter.

## A wishlist of other technical things I want to do.

I really wish I had an automated way of creating COVID-19 graphs like we have been running periodically in The Times-Independent. It takes me like 10-20 minutes to update those graphs each go-round, with that time being longer every time I go more than a week between updates. But it's a useful graph, and I would really like to have an automated way of updating it daily and maybe including it in the newsletter.

Also, I wish for $1 million.



[^utv-discussion-note]: Note to self: Here is the link to the discussion of [UTV regulations][start of UTV discussion] at the county's Nov. 16 meeting to discuss legislative priorities.

[start of UTV discussion]: https://youtu.be/iWybdkhq-Tw?t=2280
