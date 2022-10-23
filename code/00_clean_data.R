here::i_am("code/00_clean_data.R")
absolute_path_to_data <- here::here("raw_data", "insurance.csv")
data <- read.csv(absolute_path_to_data, header = TRUE)

library(labelled)
library(gtsummary)

var_label(data) <- list(
  age = "Age (years)",
  sex = "Sex",
  bmi = "BMI (kg/m^2)",
  children = "Number of children covered by health insurance",
  smoker = "Smoker",
  region = "Region",
  charges = "Individual medical costs billed by health insurance"
)

data$cat_children <- ifelse(data$children < 2, "< 2", ">= 2")

saveRDS(
  data, 
  file = here::here("output/data_clean.rds")
)