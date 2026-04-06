// Naive model implementation in stan.

// The input data
data {
  int<lower=1> N; // number of observations
  vector[N] sex_male;  
  vector[N] age;
  vector[N] brain_vol;
  vector[N] educ;
  array[N] int<lower=0, upper=1> CDR_binary; 
}

transformed data {
  vector[N] brain_educ = brain_vol .* educ;
}

// The parameters accepted by the model
parameters {
  real beta_0; // intercept
  real beta_1; // sex_male
  real beta_2; // age
  real beta_3; // brain_volume
  real beta_4; // education
  real beta_34; // interaction of 3 and 4
}

transformed parameters {
  vector[N] eta;
  vector[N] theta;
    
  // Linear predictor  
  eta = beta_0
      + beta_1 * sex_male
      + beta_2 * age
      + beta_3 * brain_vol
      + beta_4 * educ
      + beta_34 * brain_educ;
    
  // Link Function
  theta = inv_logit(eta);
  
}

// The model to be estimated.
model {
  
// Priors
  beta_0  ~ normal(0, 3);
  beta_1  ~ normal(0, 3);
  beta_2  ~ normal(0, 3);
  beta_3  ~ normal(0, 3);
  beta_4  ~ normal(0, 3);
  beta_34 ~ normal(0, 3);
  
  // Likelihood
  CDR_binary ~ bernoulli(theta);
  
}

generated quantities {
  
   vector[N] p_pred;
   array[N] int y_pred;
   
   for (i in 1:N) {
    p_pred[i] = theta[i];
    y_pred[i] = bernoulli_rng(p_pred[i]);
  }
  
}

