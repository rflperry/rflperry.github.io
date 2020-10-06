---
title: 'SUTVA vs. Exchangeability'
date: 2020-01-19
permalink: /posts/sutva_vs_exchangeability/
tags:
  - SUTVA
  - Causal inference
  - Exchangeability
---

SUTVA vs. Exchangeability
=========================

In my lab's weekly talks on causal inference, during our reading of the book *Causal Inference: What If*, a question came up about the difference
between the two concepts of *SUTVA* and *exchangeability*. This is an interesting question, as both of those two concepts deal with the generalizability
of any inferences made in an analysis or study, which is an important part of using your study as the basis for any larger scale implementation or a future study.

To begin, recall that causal inference is fundamentally a missing data problem and consider a simple, binary treatment and binary outcome experiment.

| Subject | Treatment | $$Y_0$$ | $$Y_1$$ |
|---------|-----------|-------|-------|
| 1       | 0         | **1**     | 0     |
| 2       | 1         | 1     | **0**     |
| 3       | 1         | 1     | **1**     |


Here, $$Y_0$$ and $$Y_1$$ are the counterfactual outcomes under treatment (1) or no treatment (0). **However**, we only will ever observe one of these outcomes.
For example, under the treatments in the table we only observe the bolded outcomes. The goal of our causal inference is to infer the unobserved counterfactual
outcomes. This is really hard and often requires many assumptions.

First, let's begin with the concept of exchangeability. Exchangeabiliy is a super important consideration in statistics and is simply the assumption that a set
of observations were all sampled from the same distribution. This assumption is often seen when an analysis assumes that observations are identically distributed
(part of *i.i.d.*). It's been a super important part of my work on independence testing. In the causal inference framework, exchangeability (or no confounding) is
an assumption of equivalent distribution outside of the treatment effect. This lets us say that two subjects vary in outcome only because of the assigned treatment.
Critically, this allows for the identification of causal effect **within** the study. In our mock table, exchangeability of all the subjects permits us to say that
subjects 1 and 2 differed in outcome only because of their differing assigned treatment. Notice, however, that the distribution of counterfactual outcomes of subject
3 are different than subjects 1 and 2. This isn't to necessarily say that they are't exchangeable, but it always is a possibility.

The second assumption to discuss is a fairly common one, the Stable Unit Treatment Value Assignment (SUTVA). It consists of two parts.

1. For each unit, there are not different versions of a treatment leading to different potential outcomes [consistency]
2. Potential outcomes for a unit do not vary with treatments assigned to other units [no interference]

SUTVA helps with generalizations **outside** of the study. The first point, consistency, aims to enforce that each treatment level is the same. If we were studying
the effects of aspirin on relieving headaches in our table, consistency would say that subjects 2 and 3 each received the exact same type and strength of aspirin. If
we wanted to infer the relief offered by the aspirin when given to new patients, we can make statements about that exact type and strength of aspirin but no other.
The second point, no interference, helps with generalizations outside of the study setting. Using the same aspirin example, no interference says that subject 2 taking
aspirin doesn't cause subject 1's headache to be relieved because subject 2 stopped complaining incessantly. This assumptions does away with issues of potential
network effects and intra-study dynamics that wouldn't replicate if a treatment was applied elsewhere.

SUTVA helps, but with causal claims there are always more things to keep in mind. For instance, there is still the issue of whether the study population is a
representative sample of the target population (hint: it's probably not).
