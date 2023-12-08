# logistic_growth
R scripts for a reproducible analysis of logistic growth
# Logistic Growth Analysis

This repository contains the analysis of bacterial population growth in a test tube using the logistic growth model. The analysis aims to estimate the initial population size $N_0$, the rate of growth $r$, and the carrying capacity $K$.

## The Model

The logistic growth model is described by the differential equation:

$$\[ \frac{dN}{dt} = rN\left(1 - \frac{N}{K}\right) \]$$

The solution to this equation is given by:

$$\[ N(t) = \frac{K}{1 + \frac{(K - N_0)}{N_0}e^{-rt}} \]$$

## Results

### Parameter Estimates

Using a linear approximation for the exponential growth phase and constant size phase, we estimated the following parameters:

- Initial population size $N_0$: 879
- Growth rate $r$: 0.01152507
- Carrying capacity $K$: exp(7.1855445) 

The estimates were obtained from the provided data set (`experiment1.csv`), focusing on the exponential growth region for \(N \ll K\) and small \(t\).

### Population Size Calculation at $t = 4980$ minutes

Using the estimated values of $N_0 = 879$ and $r = 0.01152507$, we can calculate the population size at $t = 4980$ minutes assuming exponential growth. The formula for exponential growth is given by:

$$\[ N(t) = N_0e^{rt} \]$$

Substituting the values:

$$\[ N(4980) = 879e^{0.01152507 \times 4980} \]$$
$$\[ N(4980) = 7.417455e+27 \]$$


### Comparison with Logistic Growth

However, the population size predicted under exponential growth at \(t = 4980\) minutes is much greater than the logistic growth model's prediction at the same time point. 
$$ \[ N(t) = \frac{K}{1 + \frac{(K - N_0)}{N_0}e^{-rt}} \]$$
$$ \[ N(t) = 6e+10  \]$$
Under the logistic growth the population growth reaches stasis at the level of a carrying capacity.
