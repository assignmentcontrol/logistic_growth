N0 <- 879
r <- 0.01152507
K <- 60000000000  
t <- seq(0, 6000, by = 60)

# Exponential growth
N_exponential <- N0 * exp(r * t)

# Logistic growth
N_logistic <- K / (1 + ((K - N0) / N0) * exp(-r * t))

plot(t, N_exponential, type = 'l', col = 'blue', xlab = 'Hypothetical time', ylab = 'N - population size', main = 'comparison of exponential and logistic growth')
lines(t, N_logistic, col = 'red', lty = 2)
legend('topright', legend = c('Exponential Growth', 'Logistic Growth'), col = c('blue', 'red'), lty = 1:2)
