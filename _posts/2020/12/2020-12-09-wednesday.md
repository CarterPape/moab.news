---
layout: post
title: Rapid testing has changed again in Moab — for the better. Here's the situation.
date: 2020-12-09 08:30 -0700
subtitle:
description:
image:
published: true
---

Waking up is hard... This is late again, but at least I wrote it yesterday instead of this morning.

## Questions about testing and vaccines in Moab, answered.

{% include authoring/captioned_image.html
    image_name = "hospital-testing.jpeg"
    caption =   ""
    credit =    "Photo by Carter Pape"
    license =   "exclusive use"
    alt =       "An \"Enter Here\" sign for the COVID-19 drive-thru testing at Moab Regional Hospital"
%}

Grand County Attorney Christina Sloan and Moab City Council Member Rani Derasary each asked local health officials a bunch of questions via email recently about the COVID-19 vaccine and testing availability in Moab. Derasary [published the answers she got](https://madar.canyon23.net/2020/12/07/covid-qa-with-seuhd/); Sloan emailed the answers she got to the newspapers.

Below, I have summarized the new or not-new-but-still-important information from the responses, which came from Moab Regional Hospital CEO Jen Sadoff and Southeast Utah Health Department Director Brady Bradford.

### The hospital faces reduced rapid test availability because of high school athlete testing, but it's paved a new path forward.

Derasary asked if it was true that the state's new initiative to [test student athletes](https://www.moabtimes.com/articles/biweekly-testing-mandated-for-school-extracurriculars/) and others in extracurriculars biweekly had reduced the supply of tests in other contexts. Sadoff said it had impacted the supply allocated to the hospital; Bradford said that the health department's access to tests was not impacted.

"Yes, the rapid tests that we were receiving were allocated to other needs, including long-term care facility testing, health department contact testing, and student testing (both HS sports and college students in general)," Sadoff said.

However, despite the decrease in test availability at the hospital due to various testing programs, the hospital has secured a new machine to test nasal swab samples for SARS-CoV-2, the coronavirus that causes the disease COVID-19. Sadoff said the equipment arrived from BD Veritor on Friday, and setup and validation were ongoing.

The new rapid tests at the hospital will be available to both symptomatic and asymptomatic individuals, offsetting the [reduction to Moab's asymptomatic testing program](https://www.moabtimes.com/articles/utah-limits-moabs-asymptomatic-testing-for-at-least-next-two-weeks/) that the state made last week.

### Asymptomatic testing in Moab is still at 50% of regular capacity due to state order.

Sadoff said in an answer to one of the questions that, at the hospital, "the employer testing has just been reduced by ½ in order to meet the request from the state laboratory to reduce volume related to their increased demand." She added that Doug Caylor, who directs the Moab Free Health Clinic and is providing support to the hospital for its asymptomatic testing program, "is working to ensure that the groups at the highest risk of transmission maintain testing," which Caylor also [told me last week](https://www.moabtimes.com/articles/utah-limits-moabs-asymptomatic-testing-for-at-least-next-two-weeks/).

"Since tourism has become more quiet, \[asymptomatic testing for\] groups like guide services has been eliminated," Sadoff said.

### Any contacts of someone who tested positive can also get a COVID-19 test.

According to Sloan, there is a rumor afoot that close contacts of people who test positive for COVID-19 can only get a coronavirus test if they show symptoms. This is not true.

"By default, health department provides a test but recommends waiting the incubation period of 5-7 days before getting the test," Bradford said. "The hospital can also conduct the test if the health department doesn’t have tests available at the time."

### After hospitals and care facilities, vaccine doses will be distributed proportionally to counties.

Some questions regarded the state's plan for distributing vaccines. The full plan and updates can be found at [`coronavirus.utah.gov/vaccine`](https://coronavirus.utah.gov/vaccine/), and there is plenty of reporting in national outlets about this.

We already know that hospital workers are likely to be prioritized first for doses, followed by residents of long-term care facilities. There are interesting questions here about sorting out the logistics of that, but for my purposes, it's out of scope.

What is in scope is how many doses Moab will get. According to Bradford, the doses that are distributed after hospitals and care facilities get theirs will be proportional to areas's populations. That means that, because Carbon, Emery, and Grand collectively represent 1.5% of the state's population, our health department will get 1.5% of the vaccine doses that the state receives.

And as for which vaccine — Pfizer's or Moderna's — that the area will get, Bradford said it will depend initially on "whatever is available," but he qualified that it will be "much harder for us to distribute the Pfizer than the others due to the nature of the packaging and cold-holding requirements."

### If you are looking to travel, MRH can provide a free test to check for asymptomatic COVID-19.

This is super random and maybe not very important, but if you want to take a coronavirus test in lead-up to traveling, the hospital will provide that free of charge.

{% include authoring/attributed_quote.html
    quote = "MRH has a PCR test available through the state for symptomatic people (free) and a PCR test available through either ARUP or Mayo Clinic for non-symptomatic people who desire to travel (there is a cost for this test). Turn-around time is between 3-5 days, depending on when the test is taken. A courier service picks them up once a day around 3pm, and if they are sent to the Mayo Clinic, there is no FedEx pick-up over the weekend which can cause a delay in return time."
    by = "Jen Sadoff"
%}

-----

## Technical memo.

I realized after sending out yesterday's newsletter that I had the date wrong on the post on [`moab.news`](https://moab.news). I had marked it as the 7th because I had written most of it on the 7th, but I was sending it out on the 8th, so I had to go back and make some redirects for the links to the position papers because

What I think I want to do is, in the `_includes` file I have for linking to assets (like PDFs and images), I want to create a loop. That loop will follow redirects or links. So, if I have an asset that I include with a story on Monday, and I link to that same asset on Tuesday, I will create a placeholder file in the asset directory for the Tuesday post that just contains a redirect instruction:

file `the/file/for/the/tuesday/post.pdf`:
~~~~ yaml
---
redirect_to: the/file/from/monday.pdf
---
~~~~

Doing assets this way would mean I keep track of every asset I link to per post. I don't know how I feel about that. I haven't made my mind up about the system I have in place now, where I organize assets in per-post directories (so all assets used for this post are in `/assets/posts/2020-12-09-wednesday/`).

I also haven't figured out what slugging convention I want to use with posts. Substack uses post titles to create slugs. I've been using date 
