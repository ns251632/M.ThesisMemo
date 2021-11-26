#ggplot2による分位点回帰直線の描画
#散布図を描く
q2 <- 
  ggplot(data = data, aes(x, y)) + 
  geom_point()
#散布図に回帰直線を描く
q2 + geom_quantile(quantiles = c(0.1, 0.5, 0.9))

#ref. https://ggplot2.tidyverse.org/reference/geom_quantile.html
