---
categories: election-2021
---


# A political compass for Moab

I'm coming up with questions to ask each of the city council candidates so that I can place them on a political compass for voters.

## The programming part

I've secured `moab-compass.com` and `moabcompass.com` (though they are not yet live) and am going to dip my toes into using [Netlify](https://www.netlify.com) for the deployment. We'll see how it goes.

An existing user interface for placing people on a political compass is [SapplyValues](https://sapplyvalues.github.io). The creator has released it under an MIT license, so I've just been ripping parts of it as I create moabcompass.com.

## The compass itself

There are two components to the compass, both answering separate questions:

1. Who should control the land and economy in Moab?
1. Should Moab grow, shrink, or stay the same?

{% include authoring/captioned_image.html
    image_name = "Moab compass (2.0).png"
    alt = "A political compass with two measures: Who should control the land and economy in Moab (local government, state government, or the market) and should Moab grow, shrink, or stay the same?"
    is_decorative = false
    credit = "Graphic by Carter Pape"
    license = "CC-BY-SA 4.0"
%}

A political scientist would probably say that there are many possible answers to the first question and that there are more possible answers to the third than the three provided.

I think a political scientist would probably also say that it is useful to use a combination of methods to understand political opinions, including quantitatively, and that there is a responsible balance between the depth and complexity of actual human behavior and opinions and usable simplifications of those complexities.

## How to place people on the political compass

This compass works in pretty much the same way that other political compasses work. You answer a set of questions that have five possible answers, ranging from strongly disagree to strongly agree (with the middle being unsure or neutral).

The questions are designed to assess your affinity for certain ideas. How much control do you think governments should have? How much do you believe in progressive values?

The way I designed the Moab Political Compass is to assess people's affinity for six ideas, split into two groups.

### Control

The first set of ideas are about control:

1. Our local government should control the land and economy in Moab.
1. Our state government should control the land and economy in Moab.
1. Market forces should control the land and economy in Moab.

The way I have mentally modeled this scale is by supposing that there is only so much control of the land and economy to go around. One of the three entities identified completely controls, or each gets shares that sum to 100%.

This component of the compass is akin to [a soil texture chart](https://www.nrcs.usda.gov/wps/portal/nrcs/detail/soils/survey/?cid=nrcs142p2_054167). When you have a soil sample, it can have sand, clay, or silt in it. If 15% of the sample is clay, 65% is sand, and 20% is silt, then the sample is sandy loam. If there were more silt and less sand, it would be loam.

Each question about control yields a positive number of points or zero. If you strongly disagree with a statement, you get a zero on that question. If you strongly agree, you get a four. If you are unsure or are neutral, you get a two.

Why assign a positive value if someone disagrees (not strongly disagrees) or is neutral? Because the idea with this component of the chart is that *somebody* controls the land and economy in Moab, and there are three entities it could be.

In reality, there are more than three entities who could have that control. It could be the federal government; it could be labor syndicates; it could be John Cena. (And now I've really named everyone.)

If you strongly believe that there is some entity besides local government, state government, or the market that should control the local land and economy, your answers will probably place you in the middle of the chart, away from all three.

But my best guess, as a person who lives and breathes Moab politics, is that most people will back control for one of the three entities I have selected rather than any of the others I have not included.

Also, if I tried to add a fourth, it would end up as a tetrahedron. That's fun, but the triangle is already pretty complicated, so...

### Growth

The second set of ideas is about growth:

1. Moab should grow over time.
1. Moab should stay the same over time.
1. Moab should shrink over time.

This set is obviously somewhat linear. How does one support growth and shrinkage at the same time? Perhaps you want growth in one area and degrowth in another, but that's what interviews are for exposing. This compass is a different, higher-level exercise.

The way this scale works is that you end up on either side of stagnation, or you end up advocating for stagnation. If you answer questions in such a way that suggest you both somewhat support growth and somewhat support degrowth, you get assigned a stagnation placement.

Equally, if you are similarly opposed to both growth and degrowth, you get a stagnation value.

Each answer in strong agreement with growth puts you closer to that end of the chart. Each answer in strong agreement with degrowth puts you closer to that end. Each answer in strong disagreement with either pushes you in neither direction.

### The questions themselves

This part is what is most likely subject to change. I may add or take away questions. I may also weight questions differently.

Each question is meant to polarize. There should be different answers for people of different control and growth persuasions; that's the whole point.

I've grouped the questions by the affiliation group that is expected to answer differently.

For example, the statement "Moab would be better off with fewer and smaller buildings," should put people who support degrowth against people who support growth and stagnation.

People who support stagnation should disagree because they think the current size and number of buildings is good; people who support growth should disagree because they want more or larger buildings.

If the question were about more and larger buildings, that would put growth supporters against stagnation and degrowth supporters.

### Expand

1. Moab would be better off with a larger economy.
1. Moab would be better off with more hotels and campgrounds.
1. We should not develop any more water resources in the valley.
1. When it comes to Moab’s housing crises, we cannot "build our way out of it."
1. I would be comfortable with an apartment complex being built within a quarter-mile of my home. (A quarter-mile is slightly longer than two city blocks.)

### Contract

1. Moab would be better off with fewer visitors.
1. Moab would be better off if fewer people lived here.
1. The total amount of water Moab uses each year is too great.
1. The local housing market should have stronger regulations.
1. Moab would be better off with fewer and smaller buildings.

### Local government

1. Our local government should directly manage local housing.
1. Moab is better off when the local government regulates local businesses.
1. Our local government knows best how to protect our watershed.
1. Public lands in Moab are best managed when local government has the final say.

### State government

1. Our state government should establish protections for developers against NIMBYs and local regulations.
1. Moab is better off when our state government restricts the taxes that our local government can impose.
1. Our state government should fund and manage efforts to diversify Moab’s economy.
1. Each American ought to have equal influence over the management of federal lands.

### The market

1. Moab employers know best what their workers’ labor is worth.
1. Development in Moab should be allowed regardless of its effect on locals.
1. Deregulating local businesses is the best practical way for Moab to prosper.
1. Moab would be better off if federal and state lands belonged to private owners rather than the government.

## Next steps

What is left now is to complete the website, finalize the questions, and send it out to the candidates for mayor and city council (whose filing deadline is Tuesday, Aug. 17). I'll probably do all of that this weekend.

I probably want to add some questions that put stagnation supporters against growth and degrowth supporters, but that might bias the scale toward the middle. Or maybe it will correctly polarize people away from the middle. I'll think about it.
