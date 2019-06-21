---
title: 'Predictive Analysis and Circuit Board Failures'
date: 2019-06-20
permalink: /posts/predictive-analysis/
tags:
  - bayesian
---

Predictive Analysis and Circuit Board Failues
======

Recently a friend came to me with a question. He had been working on testing *expensive* circuit boards and of the ten he tested, two didn't work. He was wondering the odds of future ones working. This is a question of predictive analysis. Assuming that the boards work or don't work according to a binomial distribution, the probability of success $$p = \frac{8}{10}$$, trivially (and can be shown to be the maximum likelihood estimate). So, the probability of the next board working is simply $$\frac{8}{10}$$ but asking questions about more than the next board is a bit more tricky.

