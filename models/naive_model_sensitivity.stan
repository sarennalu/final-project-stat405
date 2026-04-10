// naive_model_sensitivity.stan

data {
  int<lower=1> N;
  vector[N] sex_male;
  vector[N] age;
  vector[N] brain_vol;
  vector[N] educ;
  array[N] int<lower=0, upper=1> CDR_binary;

  real<lower=0> prior_sd;       // slope prior sd
  real<lower=0> intercept_sd;   // intercept prior sd
}

transformed data {
  vector[N] brain_educ = brain_vol .* educ;
}

parameters {
  real beta_0;
  real beta_1;
  real beta_2;
  real beta_3;
  real beta_4;
  real beta_34;
}

transformed parameters {
  vector[N] eta;
  vector[N] theta;

  eta = beta_0
      + beta_1 * sex_male
      + beta_2 * age
      + beta_3 * brain_vol
      + beta_4 * educ
      + beta_34 * brain_educ;

  theta = inv_logit(eta);
}

model {
  // Priors
  beta_0  ~ normal(0, intercept_sd);
  beta_1  ~ normal(0, prior_sd);
  beta_2  ~ normal(0, prior_sd);
  beta_3  ~ normal(0, prior_sd);
  beta_4  ~ normal(0, prior_sd);
  beta_34 ~ normal(0, prior_sd);

  // Likelihood
  CDR_binary ~ bernoulli(theta);
}

generated quantities {
  vector[N] log_lik;
  vector[N] p_pred;
  array[N] int y_pred;

  for (i in 1:N) {
    p_pred[i] = theta[i];
    y_pred[i] = bernoulli_rng(p_pred[i]);
    log_lik[i] = bernoulli_lpmf(CDR_binary[i] | theta[i]);
  }
}