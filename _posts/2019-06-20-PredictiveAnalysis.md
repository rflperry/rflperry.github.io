---
title: 'Predictive Analysis and Circuit Board Failures'
date: 2019-06-20
permalink: /posts/predictive-analysis/
tags:
  - bayesian
---

Predictive Analysis and Circuit Board Failues
======

Recently a friend came to me with a question. He had been working on testing *expensive* circuit boards and of the ten he tested, two didn't work. He was wondering the odds of future ones working. This is a question of predictive analysis. Assuming that the boards work or don't work according to a binomial distribution, the probability of success $$\theta = \frac{8}{10}$$, trivially (and can be shown to be the maximum likelihood estimate). So, the probability of the next board working is simply $$\frac{8}{10}$$ but asking questions about more than the next board is a bit more tricky. What's the probability for a set of future successes and failues totalling *s* future successes and *f* future failures along with the observations

By Bayes Theorem, we have the equation for the posteriod distribution $$p(s,f \| X) = \frac{p(\theta | s,f) \times p(s,f)}{p(X)}$$

First, since the distribution of the successes and failures is binomial, our initial belief is the prior distribution 

$$p(X) = p(s,f) = {s + f \choose s} \theata^{s} (1-\theta)^{f}$$.

However, $$\theta$$ is just an estimate from the observation and so it has its own distribution. Since the prior is the binomial, the conjugate prior distribution from which $$\theta$$ comes is the Beta distribution

$$p(\theta; \alpha, \beta) = \frac{1}{B(\alpha, \beta)} \theta^{\alpha-1}(1-\theta)^{\beta - 1}$$

where $$B(\alpha, \beta) = \frac{\Gamma(\alpha) \Gamma(\beta)}{\Gamma(\alpha + \beta}$$ and $$\Gamma(x)$$ is the gamma distribution. Our best guess for $$\alpha$$ and $$\beta$$ are based on our observations. Since the mean of the Beta distribution is $$\frac{\alpha}{\alpha + \beta}$$ and our estimated $$\theta = 0.8$$, we set $$\alpha = 8$$ and $$\beta = 2$$.

Recalling that we are interested in the predictive probability of future successes and failures, we plug these equations back into Bayes Theorem to get our posterior distribution for *s* future successes and *f* future failures

$$p(s,f \| X) = {s + f \choose s} \frac{B(\alpha + s, \beta + f)}{B(\alpha, \beta)}$$

