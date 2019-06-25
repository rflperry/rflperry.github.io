---
title: 'Predictive Analysis and Circuit Board Failures'
date: 2019-06-20
permalink: /posts/predictive-analysis/
tags:
  - bayesian
---

Predictive Analysis and Circuit Board Failures
======

Recently a friend came to me with a question. He had been working on testing *expensive* circuit boards and of the ten he tested, two didn't work. His question for me was what was the probability of future ones working. This turns out to be a question of predictive analysis. Assuming that the boards work or don't work according to a binomial distribution (i.e. a coin toss), the probability of success $$\theta = \frac{8}{10}$$ is the maximum likelihood estimate. So, the probability of the next board working is simply $$\frac{8}{10}$$. However, asking questions about more than the next board is a bit more tricky. Given our observations $$\mathbf{Z}$$, what is the probability of a set of new observations $$z^{new}$$?


In the simple maximum likelihood approach, we have estimated our parameter $$\theta = \frac{8}{10}$$ and so simply calculate the probability of new observations as $$Pr(z^{new} | \mathbf{Z}) = Pr(z^{new} | \hat\theta)$$. However, this fails to take into account our uncertainty of our estimate for $$\theta$$.

In a Bayesian setting, however, we do take into account the uncertainty of our parameter. By Bayes Theorem, we have the equation for the posterior distribution $$Pr(\theta) | \mathbf{Z}) = \frac{Pr(\mathbf{Z} | \theta) Pr(\theta)}{Pr(\mathbf{Z})} =  \frac{Pr(\mathbf{Z} | \theta) Pr(\theta)}{\int Pr(\mathbf{Z} | \theta^\prime) Pr(\theta^\prime) d\theta^\prime} $$ which tells us the likelihood of our parameter given our data. This is factored into our predictive distribution $$Pr(z^{new} | \mathbf{Z}) = \int Pr(z^{new} | \theta) Pr(\theta | \mathbf{Z}) d\theta $$. First, since the distribution of our observations is binomial, the conditional likelihood of *s* successes and *f* failures is 

$$
Pr (s,f | \theta) = {s + f \choose s} \theta^{s} (1-\theta)^{f}
$$

However, $$\theta$$ is just an estimate from the observation and so it has its own distribution. The Beta distribution is a commonly used prior distribution, positive only on $$[0,1]$$ and having a flexible shape dependent on two shape parameters $$\alpha$$ and $$\beta$$.

$$
Pr(\theta; \alpha, \beta) = \frac{1}{B(\alpha, \beta)} \theta^{\alpha-1}(1-\theta)^{\beta - 1} \quad\text{and}\quad B(\alpha, \beta) = \frac{\Gamma(\alpha) \Gamma(\beta)}{\Gamma(\alpha + \beta}
$$

where $$\Gamma(x)$$ is the gamma distribution. Our best guess for $$\alpha$$ and $$\beta$$ are based on our observations. Since the mean of the Beta distribution $$\mathbb{E}[\theta] = \frac{\alpha}{\alpha + \beta}$$ and our estimated $$\theta = 0.8$$, we set $$\alpha = 8$$ and $$\beta = 2$$.

Recalling that we are interested in the predictive probability of *s* future successes and *f* failures, we plug these equations back into Bayes theorem and find our posterior distribution to be

$$
Pr(\theta | s,f) = \frac{1}{B(s+\alpha, f+\beta)}\theta^{s+\alpha-1}(1-\theta)^{f+\beta-1}
$$

As it turns out, our posterior distribution is another Beta distribution, $$Beta(s+\alpha, f+\beta)$$. This is because the Beta distribution is the conjugate prior for the Bernoulli likelihood function, among other. If the posterior and the prior distributions are in the same probability distribution families, we call them conjugate. 

Factoring this into the predictive distribution, we find the probability of *s* future successes and *f* future failures to be

$$
Pr(s,f; \alpha, \beta) = {s + f \choose s} \frac{B(s + \alpha, f + \beta)}{B(\alpha, \beta)}
$$

where $$\alpha$$ and $$\beta$$ come from the observations $$\mathbf{Z}$$. For a single success, the probability is $$\mathbb{E} [\theta] $$ just like our maximum likelihood estimation. For more than one success or failure, the probabilities differ. By applying a Bayesian approach, we are able to factor in the uncertainty of our parameter's estimate into our calculations.

