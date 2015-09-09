# NormalSim.R
# Test normal simulation to prepare for exponential sim.
# Statistical Inference Course Class Project
# 09/09/2015 Wednesday
# Jim Callahan

# EXAMPLE: From class assignment
# compare the distribution of 1000 random uniforms
# 1,000 random numbers from the uniform probablity distribution
par(mfrow = c(1,2))

# Compare the distribution of 1000 random uniforms
hist(runif(1000))

# with the distribution of 1000 averages of 40 random uniforms
mns = NULL
for (i in 1 : 1000) mns = c(mns, mean(runif(40)))
hist(mns)

# End of: NormalSim.R


