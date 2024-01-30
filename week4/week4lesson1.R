# get penguin dataset
install.packages("palmerpenguins")
library(palmerpenguins)

# load it up
data("penguins")
View(penguins)

# make a viz
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))
