# Section 5, 10/1/19

## Parameter Estimations: Method of Moments

### Motivation

Most probability distributions we work with are characterized by some set of parameters. For example, a Gaussian distribution is characterized by its mean $\mu$ and standard deviation $\sigma$. Given a set of data, we oftentimes assume the family of distributions it comes from and then estimate the parameters of the distribution it came from. Afterwards, it can be helpful to evaluate the estimated model to determine if it is a good fit for the data.

### The Method of Moments (MOM)

**def** (moment): the $kth$ moment of a probability distribution is defined as $\mu_k = E[X^k]$, i.e. $\mu = E[X]$ is the first moment, where $X$ is a random variable from that distribution. 

**def** (sample moment): given a set of sampled observations $X_1,\dots,X_n$, the $kth$ sample moment is 
$$
\hat{\mu}_k = \frac{1}{n} \sum_{i=1}^n X_i^k
$$
This serves as an estimate of the true moment $\mu_k$. The method of moments (MOM) estimates parameters by defining them in terms of moments and then by subbing the sample moments in for the true moments. For instance, if we have two parameters $\theta_1, \theta_2$ that can be represented as functions of the first two moments
$$
\theta_1 = f(\mu_1, \mu_2)\\
\theta_2 = f(\mu_1, \mu_2)
$$
Then we can estimate our parameters as 
$$
\hat\theta_1 = f(\hat\mu_1, \hat\mu_2)\\
\hat\theta_2 = f(\hat\mu_1, \hat\mu_2)
$$
A typical workflow goes as follows

1. Calculate true moments as functions of the unknown parameters
2. Invert the functions to represent the parameters as functions of the moments
3. Calculate the sample moments and sub them in for the true ones to estimate the paramters

**Example**: *The Gamma Distributions*

A Gamma  distribution is defined by two parameters $\alpha$ and $\lambda$. 

1. The first two moments of a Gamma are

$$
\mu_1 = \frac{\alpha}{\lambda}\\
\mu_2 = \frac{\alpha(\alpha + 1)}{\lambda^2}
$$

2. Invert the functions
   $$
   \mu_2 = \mu_1^2 + \frac{\mu_1}{\lambda} \\
   => \lambda = \frac{\mu_1}{\mu_2 - \mu_1^2}\\
   => \alpha = \lambda \mu_1 = \frac{\mu_1^2}{\mu_2 - \mu_1^2}
   $$

3. Calculate and sub in the estimates
   $$
   \hat\mu_1 = \bar{X}\\
   \hat\mu_2 = \hat\sigma^2 + \hat\mu_1^2\\
   => \hat\lambda = \frac{\bar{X}}{\hat\sigma^2}\\
   => \hat\alpha = \frac{\bar{X}^2}{\hat\sigma^2}
   $$
   