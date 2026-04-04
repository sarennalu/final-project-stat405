# imports
library(dplyr)

data_processed = read.csv("../data/processed/oasis_processed.csv")

# selecting relevant columns and enforcing feature constraints
data <- data_processed %>%
  select(sex_male, Age, nWBV, Educ, CDR_binary) %>%
  filter(Educ > 1,
         Educ < 5,
         Age > 0,
         nWBV > 0,
         (sex_male == 1 | sex_male == 0),
         (CDR_binary == 1 | CDR_binary == 0)
         )
 
