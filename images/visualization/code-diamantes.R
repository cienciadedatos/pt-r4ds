library(tidyverse)

dados::diamante |>
  head()

dados::diamante |>
  count(corte)


plot_diamantes <- dados::diamante |>
  ggplot() +
  geom_bar(aes(x = corte, fill = corte), show.legend = FALSE) +
  scale_fill_hue() +
  theme_bw(base_size = 15)

ggsave("images/visualization/diamante.png", plot_diamantes, width = 6, height = 5, units = "in")


plot_diamantes2 <- dados::diamante |>
  ggplot() +
  geom_bar(aes(x = corte), show.legend = FALSE) +
  scale_fill_hue() +
  theme_bw(base_size = 15)

ggsave("images/visualization/diamante_bw.png", plot_diamantes2, width = 6, height = 5, units = "in")
