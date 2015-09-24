# ExponentialSim.R
# Test exponential sim.
# Statistical Inference Course Class Project
# 09/09/2015 Wednesday
# Jim Callahan

# EXAMPLE: From class assignment
# compare the distribution of 1000 random exponentials
# 1,000 random numbers from the exponential probablity distribution
par(mfrow = c(1,2))

# Compare the distribution of 1000 random exponentials
# ylim = .55
x <- rexp(1000, rate = 0.2)
h1 <- hist(x, freq=F)
h1
curve(dexp(x, rate = 0.2), add=T, col="Red")

# with the distribution of 1000 averages of 40 random exponentials
mes = NULL
for (i in 1 : 1000) mes = c(mes, mean(rexp(40, rate = 0.2)))
x <- mes
m <- mean(mes)
s <- sd(mes)
h <- hist(x, plot = F)

ylim = range(0, h$density, max(h$density)*1.1 )
hist(x, freq=F, ylim=ylim)
curve(dexp(x, rate = 0.2, log = FALSE), add=T, col="Red")
curve(dnorm(x, m, s), add=T, col="Blue")

# End of: ExponentialSim.R