#Implementation of MCMC
#Reference: 'Blitzstein and Hwang, Chap 12

#Metropolis-Hastings algorithm for normal-normal model

y <- 3
sigma <- 1
mu <- 0
tau <- 2

d <- 1 #s.d. for the proposal for step 1
niter <- 10^4 #n of iteration
theta <- rep(0, niter)

theta[1] <- y
for (i in 2:niter){
    theta.p <- theta[i-1] + rnorm(1,0,d) #proposed theta
    r <- dnorm(y, theta.p, sigma) * dnorm(theta.p, mu, tau)  / (dnorm(y, theta[i-1], sigma) * dnorm(theta[i-1], mu, tau)) #probability of showing coin's head
    flip <- rbinom(1,1,min(r,1)) #coin flip
    theta[i] <- if(flip==1) theta.p else theta[i-1] #update theta
}

theta <- theta[-(1:(niter/2))] #discard initial draws
png('theta_MH.png')
hist(theta)
dev.off()


#Gibbs sampling for chiken-egg problem (systemic scan))
x <- 7 #observed value
lamda <- 10 
a <- 1
b <- 1

niter <- 10^4
p <- rep(0, niter)
N <- rep(0, niter)

p[1] <- 0.5 #initialize p and N
N[1] <- 2*x

for (i in 2:niter){
    p[i] <- rbeta(1,x+a, N[i-1]-x+b)
    N[i] <- x+rpois(1,lamda*(1-p[i-1]))
}

p <- p[-(1:(niter/2))]
N <- N[-(1:(niter/2))]

png('chikenegg_Gibbs.png')
par(mfrow=c(1,2))
hist(p)
hist(N)
dev.off()


