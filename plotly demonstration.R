### R code demo pour plotly ----

library(ggplot2)

p <- ggplot(data = iris, aes( x = Sepal.Length, y = Sepal.Width))+
  geom_point()
p


library(plotly)
ggplotly(p)
