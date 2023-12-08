# logistic_growth
R scripts for a reproducible analysis of logistic growth
# Logistic Growth Analysis

This repository contains the analysis of bacterial population growth in a test tube using the logistic growth model. The analysis aims to estimate the initial population size (\(N_0\)), the rate of growth (\(r\)), and the carrying capacity (\(K\)).

## The Model

The logistic growth model is described by the differential equation:

\[ \frac{dN}{dt} = rN\left(1 - \frac{N}{K}\right) \]

The solution to this equation is given by:

\[ N(t) = \frac{K}{1 + \frac{(K - N_0)}{N_0}e^{-rt}} \]

## Results

### Parameter Estimates

Using a linear approximation for the exponential growth phase and constant size phase, we estimated the following parameters:

- Initial population size (\(N_0\)): 879
- Growth rate (\(r\)): 0.01152507
- Carrying capacity (\(K\)): exp(7.1855445) 

The estimates were obtained from the provided data set (`experiment1.csv`), focusing on the exponential growth region for \(N \ll K\) and small \(t\).
