---
layout: post
title: UTV follow-up; questions on COVID-19 testing in Moab; good news; and more
date: 2020-12-08 08:12 -0700
subtitle: But what is the difference between a UTV and ATV?
---


I didn’t get a mid-day nap yesterday. I was too busy writing all of this. I am still catching up on emails from my bad idea of using work time last week for programming this newsletter, so I have some interesting stories to provide today, but not much on them yet.

## A U.S. commission on consumer safety wants ATVs off paved public roads, to protect riders.

As I was reviewing the position papers of the national industry groups representing [ROVs (recreational off-highway vehicles)]({% include asset_path from_post="2020-12-04-city-and-county-seeking-new-utv-regulations" file_name="ROHVA On Road Opposition Position 2020.pdf" %}) and [ATVs (all-terrain vehicles)]({% include asset_path from_post="2020-12-04-city-and-county-seeking-new-utv-regulations" file_name = "SVIA ATV On-Road Opposition Position 2020 (002).pdf" %}), I found out that they are not the only large groups in the U.S. with interests against having OHVs on public roads. The U.S. Consumer Product Safety Commission [also wants UTVs off paved roads](https://www.cpsc.gov/Newsroom/News-Releases/2018/CPSC-Urges-Riders-to-Keep-All-Terrain-Vehicles-Off-Roads-in-New-Public-Service-Announcement/).

The main reason that the commission sites for wanting to keep ATVs off public roads is that it is unsafe to have them there. Among deaths involving ATVs between 2010 and 2013, nearly one third, or 770 deaths, were related to incidents involving ATVs being ridden on paved public roads or parking lots.

The commission documents these and other statistics on ATV-related deaths and injuries in an annual report. [The report published in 2020](https://www.cpsc.gov/s3fs-public/2018AnnualReportofATVRelatedDeathsandInjuries.pdf) looks at data from 2018 and prior.

As the Specialty Vehicle Institute of America notes in their position paper, ATVs lack safety equipment required by the federal government to qualify for on-road use because they are specifically not designed for use on paved, public roads.

Of course, the nut to crack here is: Are UTVs different from ATVs in this respect? ATVs don't always have seat belts or roll cages, for example. UTVs are different that way.

However, the Recreational Off-Highway Vehicle Association specifically calls out UTVs in their position papers, defining "An ROV — sometimes referred to as a side-by-side or UTV" as a "motorized off-highway vehicle," and rattles off some additional qualifications. It says these vehicles "are designed, manufactured, and sold for *off-highway use only*" (original emphasis included).

ROHVA also repeats some of the claims from the SVIA — namely, that "permitting street use of ROVs, including modified vehicles, would be in conflict with manufacturers' proper use intent and contrary to federal safety requirements." They state it pretty clearly later in the paper, as well:

> ROHVA emphasizes that ROVs are not designed, manufactured, or in any way intended for use on public streets, roads or highways and urges that on-highway use of ROVs be prohibited and law enforcement efforts be strengthened to eliminate this practice. *— ROHVA position paper*{:.credit}

I guess the next step is to contact Polaris and some other UTV manufacturers to ask for their input on the matter.

-------

## Local survivors of domestic abuse receive supplies for starting over.

{% include authoring/captioned_image.html
    image_name = "Seekhaven donation.jpg"
    caption =   "Moab Rotary Club recently donated 10 sets of \"Starter Boxes\" to Seekhaven on Monday. The kits include supplies like dishes, cookware, cleaning supplies, and many other items needed for setting up an apartment. The kits are provided to local survivors of domestic abuse who need everyday supplies after moving out of dangerous living situations."
    credit =    "Photo by Carter Pape"
    license =   "exclusive use"
    alt =       "people standing next to and behind a table with cleaning, kitchen, and other household supplies"
%}

Moab Rotary Club donated 10 sets of “Starter Boxes” to Seekhaven on Monday, kits of supplies including dishes, cookware, cleaning supplies, and many other items needed for setting up an apartment. The club has made these donations regularly over the past at least three years, according to Seekhaven Director Abi Taylor.

As Taylor described it, the kits are for ensuring that someone who is leaving an abusive situation has some of the essentials needed for making a place for themselves in a new home. As anyone who has ever moved, gone to college, or lived on their own knows, the shear number of small items that you need around the house can add up in cost quickly, so these starter kits are a way to save survivors money, and easier to overlook: the time and mental and emotional energy needed to buy them.

-----

## A screed about email marketing.

I read [a blog post](https://medium.com/@remi_grumeau/ditching-tables-out-of-some-email-design-5eaab7928fb) yesterday that has inspired me to let go of the feeling that I need to use [table layouts](https://www.tutorialrepublic.com/html-tutorial/html-layout.php) to make emails look correct. So, fuck that; I’m not going to try to satiate the decrepit standards of no-name email clients. It’s not worth my time to program that kind of thing.

One thing I noticed in the blog post is that the overall width of emails was the primary thing that kept getting messed up (granted, only with Lotus Notes, which: wtf is that). This seems like an easy fix: Surround the content with a table that has a fixed or maximum width.

I may not even go that far because I’m so enraged by the shitty lack of standards that these email clients are perpetuating and the companies that work off [pricing models](https://www.litmus.com/pricing/) that yield egregious barriers to entry that make ventures like mine stupid hard. Why is it going to cost me [$73 per month](https://www.emailonacid.com/pricing/) to test emails?

I can name so many tech companies out there that have figured out [egalitarian pricing models](https://www.cloudflare.com/plans/) on which they pride themselves because it enables small players like me to build things for cheap and almost for free. You then go look at the email marketing landscape and it is God-awful. Everything is expensive; nothing is free; there is no pride in low-cost offerings; every pricing structure is regressive…

This is exactly why I have felt so gross stepping in this newsletter shit. There is one silver lining, and it is [Buttondown](https://buttondown.email/). Justin Duke is a hero for what he has made: [a free newsletter service](https://buttondown.email/pricing). It’s clean, albeit a little buggy and incomplete, but it’s exactly because he’s doing the thing [on his own](https://buttondown.email/features/run-by-a-human). Not only that, but he is offering something beautiful in a market and industry full of absolute garbage, and I admire that Honestly, it’s inspiring.

So, I’m going to beat Justin at his own game. But only for myself; I don’t have the bandwidth (yet) to scale up the solution I am building for myself into a commodity. That’s the difference between him and me and the reason he’s making money off his project and I am losing money.

## Technical memo.

I’m thinking that I will use [Jekyll](https://jekyllrb.com/) to render posts as emails (and use clever linking or syncing on my computer so that I don’t have to copy and paste posts), [Juice](https://www.npmjs.com/package/juice/) for CSS in-lining (another dumb hoop through which I must jump to make emails look good), [Mailgun](https://www.mailgun.com/plans-and-pricing/) for sending emails and tracking their analytics, [Amazon S3](https://aws.amazon.com/s3/pricing/) for hosting the website where issues of the newsletter live outside of inboxes, and if I feel like it, [Cloudflare](https://www.cloudflare.com/plans/) (or, alternatively, nothing) for web analytics.

These things are either free libraries or web services with fair pricing models, so I will not have to sacrifice my soul to make and do this thing.

Using Cloudflare in lieu of Google for web analytics feels like the ethical thing to do. Google Analytics relies on cookies and Javascript for tracking users, and it requires that you include a little script on each of your pages that does God-knows-what, but many browsers like Safari block that script by default anyway, which is breaking web analytics (which is overall a good thing for privacy).

Cloudflare, on the other hand, uses the bare essentials to track analytics — page requests. This maximizes user privacy, adding zero overhead or tracking into the equation and requiring no cookies to work. Foregoing cookies means that I won’t have to provide [a dumbass warning](https://www.theverge.com/2020/5/7/21250300/eu-cookie-consent-policy-updated-guidelines-cookie-wall) to users who visit from Europe (though credit is due to European regulators for prioritizing user consent and privacy when they passed the GDPR).

The other part, as I have mentioned before, is the database of emails. This will just involve building a simple [microservice](https://en.wikipedia.org/wiki/Microservices) that holds a [database](https://aws.amazon.com/dynamodb/) of emails (and nothing else — just emails) that can be added via a [double opt-in](https://www.sendinblue.com/blog/double-opt-in/)system (to ensure that robots and strangers aren’t signing people up for the newsletter) and removed without hassle with an easy-to-find unsubscribe link in every email (because hassling people sucks).

I will need some [Amazon Lambda](https://aws.amazon.com/lambda/) functions for the two-step signup and single-step opt-out processes, but as I keep thinking about it, that should be it. [I don’t think I will need to maintain any kind of server](https://en.wikipedia.org/wiki/Serverless_computing) for this project, which would be cool.

That would be cool for multiple reasons, including that it would be very scalable to then turn this into a commodity solution that I go around selling to people (or, for the small guys, giving away for free).

