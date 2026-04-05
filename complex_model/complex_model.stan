data {
  int N; 
  vector<lower=0, upper = 1>[N] y;
  vector<lower = 0, upper =1>[N] sex;
  vector<lower = 0, upper = 1>[N] age; 
  vector<lower = 0, upper = 1>[N] brain_volume;
  vector<lower = 0, upper = 1>[N] educ;
  vector<lower = 0, upper = 1>[N] brain_educ;
}

parameters {
  
  real beta1;
  real beta2;
  real beta3;
  real beta4;
  real beta34;
  vector[N] Z; 
  real k0;
  real<lower = 0> delta;
  real<lower = 0> sigma;
}

transformed parameters {
  vector[N] mu = beta0 + beta1*sex + beta2*age 
  + beta3*brain_volume + beta4*educ + beta34*brain_educ;
  real beta0 = 0;
  real k1 = k0 + delta;
}

model {
  
  // prior 
  beta0 = 0;
  beta1 ~ normal(0,1);
  beta2 ~ normal(0,1);
  beta3 ~ normal(0,1);
  beta4 ~ normal(0,1);
  beta34 ~ normal(0,1);
  delta ~ exponential(0.5);
  sigma ~ exponential(0.5);
  
  for (i in 1:N) {
    Z[i] ~ normal(mu)
  } 
 
}


