---
title: "553.430 Introduction to Statistics"
layout: archive
collection: teaching
permalink: /teaching/2019-fall-stats/1-Bivariate_Normal
date: 2019-09-03
location: "Baltimore, MD"
---
# Section 1, 9/2/19

## Multivariate Change of Basis

Let $(X,Y) \sim F_{XY}$ and $X,Y$ are mapped onto $U,V$ by some invertible transformation such that
$$
u = g_1(x,y) \quad v = g_2(x,y)\\
x = h_1(u,v) \quad y = h_2(u,v)
$$
Then (assuming that $g_1,g_2$ have continuous partial derivatives) and that the Jacobian 

![1567481878884](C:\Users\Ronan Perry\AppData\Roaming\Typora\typora-user-images\1567481878884.png)

![1567481898589](C:\Users\Ronan Perry\AppData\Roaming\Typora\typora-user-images\1567481898589.png)

In proposition A, the inverse Jacobian term compensates for how areas/volumes/higher dimensional regions change under the transformation.

### Ex.

![1567482109894](C:\Users\Ronan Perry\AppData\Roaming\Typora\typora-user-images\1567482109894.png)

$f_{Y_1,Y_2}$ can be seen as a bivariate normal distribution

## Bivariate Normal Distribution 

Normal distribution

$$f_X(x) = \frac{1}{\sigma\sqrt{2\pi}}exp(-\frac{(x-\mu)^2}{2\sigma^2})$$

Bivariate normal

For means $\mu_x, \mu_y$, variances $\sigma_x, \sigma_y$ and population correlation coefficient $\rho = \frac{cov(X,Y)}{\sigma_x\sigma_y}$

As a reminder, $cov(X,Y) = E[(X - E[X])(Y-E[Y])] = E[XY] - E[X]E[Y]$

![1567482864211](C:\Users\Ronan Perry\AppData\Roaming\Typora\typora-user-images\1567482864211.png)

Another way to write the bivariate normal is in quadratic form

Let
$$
\mathbb{x} = [x, y]^T\\
\mathbb{\mu} = [\mu_x, \mu_y]^T\\
\mathbb{\Sigma} = 
\begin{pmatrix}
\sigma^2_x & \sigma_{xy}\\
\sigma_{xy} & \sigma^2_y
\end{pmatrix}
$$
Instead of $\sigma_{xy}$ you may see $\rho\sigma_x\sigma_y$ sometimes as they are equivalent. Then

$$f_{XY}(x,y) = \frac{1}{\sqrt{(2\pi)^k|\mathbb{\Sigma}}|}exp[-\frac{1}{2}(\mathbb{x} - \mathbb{\mu})^T\mathbb{\Sigma}^{-1}(\mathbb{x} - \mathbb{\mu})]$$ This form generalizes to multivariate gaussians of higher dimension.

Sometimes we are interested in the conditional density, however.

Recall the conditional density $f_{Y|X}(y|x) = \frac{f_{X,Y}(x,y)}{f_X(x)}$

Applying this to the bivariate normal distribution and reducing, we get:

![1567483542428](C:\Users\Ronan Perry\AppData\Roaming\Typora\typora-user-images\1567483542428.png)

Notice that this is exactly a univariate normal distribution whose mean and variance are dependent on $\rho$ and $\mu_\mathbb{x}$. This is easy to visualize on the plot of a multivariate normal. In the case that $\rho = 0$, i.e. they are independent, we recover $f_Y$ as we would expect.
