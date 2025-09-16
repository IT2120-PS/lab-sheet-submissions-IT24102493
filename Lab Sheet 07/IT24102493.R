setwd("C:\\Users\\Sanjeewa\\Desktop\\IT24102493")
getwd()

#Q1
#Part 1
# Define the start and end of the uniform distribution
a <- 0
b <- 40

# Calculate the probability that the train arrives before 8:25 a.m. (25 minutes)
prob_before_25 <- punif(25, min = a, max = b)

# Calculate the probability that the train arrives before 8:10 a.m. (10 minutes)
prob_before_10 <- punif(10, min = a, max = b)

# The probability of the train arriving between 8:10 and 8:25 is the difference
probability <- prob_before_25 - prob_before_10
print(probability)

#Part2
rate <- 1/3
probability <- pexp(2, rate = rate)
print(probability)

#Part3 
#i)
# Define the mean and standard deviation
mu <- 100
sigma <- 15
prob_above_130 <- pnorm(130, mean = mu, sd = sigma, lower.tail = FALSE)
print(paste("Probability of IQ > 130:", prob_above_130))


#ii)
iq_95th_percentile <- qnorm(0.95, mean = mu, sd = sigma)
print(paste("IQ score for 95th percentile:", iq_95th_percentile))

