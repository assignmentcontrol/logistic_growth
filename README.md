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
$$\[ N(4980) = 879e^{0.01152507 \times 4980} \]$$
$$\[ N(4980) = 7.417455e^{27} \]$$


### Comparison with Logistic Growth

However, the population size predicted under exponential growth at \(t = 4980\) minutes is much greater than the logistic growth model's prediction at the same time point. 
$$\[ N(t) = \frac{K}{1 + \frac{(K - N_0)}{N_0}e^{-rt}} \]$$
$$\[ N(t) = 6e+10  \]$$
Under the logistic growth the population growth reaches stasis at the level of a carrying capacity.

![image](https://github.com/assignmentcontrol/logistic_growth/assets/153260107/e95e6a57-98be-4845-8c95-64aa0eaf9bd4)

### Random walk

Using prepared script, the following paths were produced:
![image](https://github.com/assignmentcontrol/logistic_growth/assets/153260107/dbdc6c7a-204f-464e-966c-190ba1ff34fd)
These pahths are completely random, they do not share the walking trajectory, do not show the patterns and tendencies. The paths also exhibit significant volatility, with frequent fluctuations around the central trend. The distribution of individual steps appears to be skewed towards negative values in the second 
graph, but not in the first.

##### Random seed 
Many simulations appear to be pseudo-random. It is implemented using a random seed as a starting point for generating random numbers. It initializes the random number generator, ensuring that the sequence of random numbers generated is reproducible. If the same seed is provided to the random generator, the same sequence is going to be yielded. It allows  to obtain the same set of random numbers each time in a simulation.


<img width="1426" alt="Screenshot 2023-12-08 at 02 29 27" src="https://github.com/assignmentcontrol/logistic_growth/assets/153260107/f44bb5fb-fd1c-40a9-a351-4423769682d1">


