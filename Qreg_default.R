#分位点回帰直線を描画する
plot(y ~ x, data)
tau <- seq(0.1, 0.9, 0.4)  #ex. 分位点: 0.1tile, median, 0.9
beta <- as.list(tau)
for(i in 1:length(tau)){
  beta[[i]] <- rq(y ~ x, tau = tau[i], data)
  lines(data$x, fitted(beta[[i]]), col = i + 1)
}

#一応...分位点回帰の要約
q1 <- rq(y ~ x, tau = tau[1:length(tau)], data = data)
summary(q1)
