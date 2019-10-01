## 553.430 Introduction to Statistics
# Section Example Code
# Ronan Perry

ls()
set.seed(0)

get_params <- function(){
    return(c(2,3))
}


## To start, choose fixed values for \alpha and \lambda. 
params = get_params()
alpha <- params[1]
lam <- params[2]

n <- 250

## Generate a vector of 250 random gamma distributed random variables with these parameters 
# (make sure that your R parameters coincide with how Rice defines the parameters in the text). 

X <- rgamma(n=n, shape=alpha, rate = lam)


## From this and the formulas for the MOM estimators, 
# compute \hat{\lambda} and \hat{\alpha} for this data. 
# (You can verify that these numbers should be close to whatever your chosen parameter values were).

alpha1 <- mean(X) / var(X)
lam1 <- mean(X)**2 / var(X)

# Suppose \hat{\lambda}=a, and \hat{\alpha}=b.

## Determine what the large-sample distribution of these MOM estimators might be, you should implement a loop. 
# You can do this by creating, in R, an empty list with two columns. 
# I'd start with a list with 1000 rows. Let m run from 1 to 1000. 
# For each m, generate 250 gamma distributed random variables with parameters (a, b)
# that you computed above from the original data itself. 
## Compute the MOM estimates for alpha and lambda from this newly-generated data (using the formulas above for MOM estimates), 
# and then store this pair of estimates as an ordered pair in the list. 

alphas <- c()
lambdas <- c()

for (m in 1:1000){
    Xhat <- rgamma(n=n, shape=alpha1, rate = lam1)
    alphas[m] <- mean(Xhat) / var(Xhat)
    lambdas[m] <- mean(Xhat)**2 / var(Xhat)
}

## Once you have filled all spots in the list (which should have 1000 pairs in it), 
# you should plot the \hat{\lambda} coordinate and the \hat{alpha} coordinate.

# Plot alphas
xfit <- seq(min(alphas), max(alphas), length = 40) 
yfit <- dnorm(xfit, mean = mean(alphas), sd = sd(alphas)) 
ha <- hist(alphas, breaks = 10, density = 10,
          col = "lightgray", xlab = "alpha", main = paste(c("Alphas: mean=",round(mean(alphas),2),", sd=",round(sd(alphas),2)))) 
yfit <- yfit * diff(ha$mids[1:2]) * length(alphas) 
lines(xfit, yfit, col = "black", lwd = 2)

# Plot lambdas
xfit <- seq(min(lambdas), max(lambdas), length = 40) 
yfit <- dnorm(xfit, mean = mean(lambdas), sd = sd(lambdas)) 
ha <- hist(lambdas, breaks = 10, density = 10,
           col = "lightgray", xlab = "lambda", main = paste(c("Lambdas: mean=",round(mean(lambdas),2),", sd=",round(sd(lambdas),2)))) 
yfit <- yfit * diff(ha$mids[1:2]) * length(lambdas) 
lines(xfit, yfit, col = "black", lwd = 2)
