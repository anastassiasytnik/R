install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)
str(quartet)
wide_quartet <- quartet %>%
  arrange(set, x) %>%
  mutate(entry = c(1:44) %% 11 + 1) %>%
  pivot_wider(id_cols = (entry), names_from = set, values_from = c(x, y), names_vary= "slowest")
View(wide_quartet)

#Summary - looks the same
quartet %>%
  group_by(set) %>%
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x, y))

# But graphs are different
ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(vars(set))

# cool graphs from datasauRus package
install.packages('datasauRus')
library('datasauRus')
ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset)) + geom_point() + theme_void() + theme(legend.position = "none") + facet_wrap(~dataset, ncol=3)
