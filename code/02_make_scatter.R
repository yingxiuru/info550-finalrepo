here::i_am("code/02_make_scatter.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)

library(ggplot2)

scatterplot <- 
  ggplot(data, aes(x = children, y = charges)) +
  geom_point() +
  labs(x = "Number of children covered by health insurance",
       y = "Individual medical costs billed by health insurance") +
  geom_smooth(method = lm) +
  theme_bw() +
  theme(panel.grid =element_blank())

ggsave(
  here::here("output/scatterplot.png"),
  plot = scatterplot,
  device = "png"
)
