// The input data
data {

}

// The parameters accepted by the model.
parameters {
  real beta_0;
  real beta_1;
  real beta_2;
  real beta_3;
  real beta_4;
  real beta_34;
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

