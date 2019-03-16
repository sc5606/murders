library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>%
    ggplot(aes(abb, rate)) +
    geom_bar(width = 0.5, stat = "identity", color = "black") +
    coord_flip()
#save the plot to a file
ggsave("figs/barplot.png")