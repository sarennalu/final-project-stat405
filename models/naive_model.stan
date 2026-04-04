// The input data
data {
  int<lower=1> N; // number of observations
  array[N] int<lower=0, upper=1> sex_male; // forcing binary structure 
  vector<lower=0>[N] age; // forcing nonnegative values
  vector<lower=0>[N] brain_vol;
  vector<lower=1, upper=5>[N] educ;
  array[N] int<lower=0, upper=1> CDR_binary; 
}

// The parameters accepted by the model.
parameters {
  real beta_0; // intercept
  real beta_1; // sex_male
  real beta_2; // age
  real beta_3; // brain_volume
  real beta_4; // education
  real beta_34; // interaction of 3 and 4
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
}

