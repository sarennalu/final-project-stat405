data {
  int N; 
  vector<lower=0, upper = 1>[N] y;
  vector<lower = 0, upper =1>[N] sex;
  vector[N] age; 
  vector[N] brain_volume;
  vector[N] educ;
  vector[N] brain_educ;
}

parameters {
  real beta1;
  real beta2;
  real beta3;
  real beta4;
  real beta34;
  real k0;
  real<lower = 0> delta;
  real<lower = 0> sigma;
}

transformed parameters {
  real beta0 = 0;
  vector[N] mu = beta0 + beta1*sex + beta2*age 
  + beta3*brain_volume + beta4*educ + beta34*brain_educ;
  real k1 = k0 + delta;
}

model {
  
  // prior 
  beta1 ~ normal(0,2);
  beta2 ~ normal(0,2);
  beta3 ~ normal(0,2);
  beta4 ~ normal(0,2);
  beta34 ~ normal(0,2);
  delta ~ exponential(0.3);
  sigma ~ exponential(0.3);
  k0 ~ normal(0,1);
  
  for (i in 1:N) {
    if (y[i] == 0) {
      target += normal_lcdf(k0| mu[i], sigma);
    } else if (y[i] == 0.5) {
    target += log_diff_exp(
                normal_lcdf(k1 | mu[i], sigma),
                normal_lcdf(k0 | mu[i], sigma));
    } else {
      target += normal_lccdf(k1| mu[i], sigma);
    }
  } 
}

generated quantities {
  vector[N] p0;
  vector[N] p05;
  vector[N] p1;
  
  for (i in 1:N) {
    p0[i] = normal_cdf(k0| mu[i], sigma);
    p05[i] = normal_cdf(k1| mu[i], sigma) - normal_cdf(k0| mu[i], sigma);
    p1[i] =  1- normal_cdf(k1|mu[i], sigma);
  }
}


