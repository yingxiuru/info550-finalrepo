here::i_am("code/01_make_table.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)

library(gtsummary)

table_one <- data |>
  select("age", "sex", "bmi", "smoker", "region", "charges", "cat_children") |>
  tbl_summary(by = cat_children) |>
  modify_spanning_header(c("stat_1", "stat_2") ~ "**Number of children covered by health insurance**") |>
  add_overall() |>
  add_p()


saveRDS(
  table_one,
  file = here::here("output/table_one.rds")
)

