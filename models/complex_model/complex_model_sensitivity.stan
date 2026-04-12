data {
  int<lower=1> N;
  array[N] int<lower=1, upper=3> y_cat;

  vector[N] sex;
  vector[N] age;
  vector[N] brain_volume;
  vector[N] educ;
  vector[N] brain_educ;

  real<lower=0> beta_sd;
  real<lower=0> c1_sd;
  real<lower=0> delta_rate;
}

parameters {
  real beta1;
  real beta2;
  real beta3;
  real beta4;
  real beta34;

  real c1;
  real<lower=0> delta;
}

transformed parameters {
  vector[N] eta;
  real c2;

  eta = beta1 * sex
      + beta2 * age
      + beta3 * brain_volume
      + beta4 * educ
      + beta34 * brain_educ;

  c2 = c1 + delta;
}

model {
  beta1  ~ normal(0, beta_sd);
  beta2  ~ normal(0, beta_sd);
  beta3  ~ normal(0, beta_sd);
  beta4  ~ normal(0, beta_sd);
  beta34 ~ normal(0, beta_sd);

  c1    ~ normal(0, c1_sd);
  delta ~ exponential(delta_rate);

  for (i in 1:N) {
    if (y_cat[i] == 1) {
      target += normal_lcdf(c1 | eta[i], 1);
    } else if (y_cat[i] == 2) {
      target += log_diff_exp(
        normal_lcdf(c2 | eta[i], 1),
        normal_lcdf(c1 | eta[i], 1)
      );
    } else {
      target += normal_lccdf(c2 | eta[i], 1);
    }
  }
}

generated quantities {
  vector[N] p1;
  vector[N] p2;
  vector[N] p3;
  vector[N] log_lik;

  for (i in 1:N) {
    p1[i] = normal_cdf(c1 | eta[i], 1);
    p2[i] = normal_cdf(c2 | eta[i], 1) - normal_cdf(c1 | eta[i], 1);
    p3[i] = 1 - normal_cdf(c2 | eta[i], 1);

    if (y_cat[i] == 1) {
      log_lik[i] = normal_lcdf(c1 | eta[i], 1);
    } else if (y_cat[i] == 2) {
      log_lik[i] = log_diff_exp(
        normal_lcdf(c2 | eta[i], 1),
        normal_lcdf(c1 | eta[i], 1)
      );
    } else {
      log_lik[i] = normal_lccdf(c2 | eta[i], 1);
    }
  }
}