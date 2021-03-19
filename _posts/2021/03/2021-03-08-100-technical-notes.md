---
categories:
    - technical-notes
---

# Technical notes: I am successfully learning AWS CloudFormation

As usual, these technical notes are just for me. Unless you already know Amazon Web Services (and, specifically, Serverless Application Model), this all is going to be very opaque for you.

I just need to write down some thoughts, and although I love teaching and adding links to things, I'm not going to create time for doing that here.

So:

I spent the weekend learning Amazon Web Services's Serverless Application Model and CloudFormation.

I kept wavering on whether it was absolutely necessary to learn these systems just for the sake of building a microservice for managing subscribers, but last week, I finally decided that I needed to just learn it. I'll explain why later.

Whereas before Friday, how the whole thing worked was totally opaque to me, I now have successfully made some changes to one of the templates they provide in tutorials about the Serverless Application Model. Of course, what is programming but putting together and tweaking templates? So, I am basically a serverless expert, now.

Something that kept confusing me prior to a few breakthroughs I made this weekend was that, in tutorials and examples I kept seeing, an API Gateway resource was never explicitly defined. Even in the outputs part of the template file, it was not the API itself that was defined; it was methods within the API.

It turns out that the Serverless Application Model has this transform it uses to translate `AWS::Serverless::Function` resources into `AWS::Lambda::*` and accompanying `AWS::APIGateway::*` resources, with all the connections between them conveniently defined for you and defaults filled in nicely.

It also turns out that the `outputs` part of the template folder *is totally optional*. Optional in a strict sense, that is; there's probably some good reason to keep that part up to date.

But, for example, when I added my own function to the template, I neglected to define the implicit Lambda function (or maybe the API Gateway resource?) in the outputs part, but the whole thing worked anyway. That makes me think that `outputs` is just a documentation thing.

I also made a discovery that Python treats the following as a single-item array:

``````````````````````````````````````````````````````````````````python
return {
    "blah": "blah",
    "HOOPIN": {
        "LeBron": "James",
    },
},
``````````````````````````````````````````````````````````````````

It's that very last comma that does the trick. Removing it means that what is returned is a dictionary (or object, I forget which) rather than a list.

I like including commas everywhere in Python objects, lists, function calls, attribute list definitions, and the like because it makes adding to them easier and looks more standardized. But I guess it makes sense to exclude that final comma.

JSON doesn't let you use trailing commas — or, at least, my linter always complains when I use them. And that's why JavaScript sucks and Python rules.

Anyway, that trailing comma revealed to me that there is a very specific pattern that I need to follow in creating response objects on Lambda proxy endpoints, and it throws a 500 error if you mess it up, but you will only see that if you invoke the API; locally testing the lambda function itself makes everything look fine and dandy.

That makes me want to figure out whether I can do local testing of the API Gateway resources. I know there is a way to stage a DynamoDB service on your local machine, and staging a Lambda function on your local machine also seems nice. What about APIs?

That takes me back to the reason that I decided to just commit to learning the Serverless Application Model.

## Why I actually committed to the journey this time.

Last week, I had been manually tinkering with the API that I wanted to define for managing subscribers (I just need to be able to add subscriptions, remove subscriptions, and list the emails to which to send the newsletter). This meant using the GUI that AWS provides for editing these things.

However, that API Gateway management interface is just chock full of options and random shit that was making me wonder whether I needed to thoroughly vet all the options before "launcing" the API. Like, is it good practice to sweat each of those details? I usually think: Yes.

I figured that the best way to sweat those details would be in a programmatic way. I didn't want to go clicking through all the windows to set values for everything; I wanted to be able to copy and paste similar values without needing to go into a dialog every time something needed a change.

That's when I realized that what I was yearning for — to define the API programmatically — was already possible by using CloudFormation and the Serverless Application Model (although I couldn't have told you at that point what the difference between the two was).

So, I just went ahead with trying to learn it. What finally got me over the top was actually following a recent tutorial from Amazon Web Services (December 2020) on the Serverless Application Model. I got halfway through, and things finally started clicking, so I left the script and started tinkering on my own.

And now I'm an expert!
