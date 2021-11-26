#R^2: [Ref.: 今井耕介，社会科学のためのデータ分析入門（上）]
R2 <- function(model) {
  resid <- resid(model)        #残差
  y <- fitted(model) + resid   #従属変数
  TSS <- sum((y - mean(y))^2)  #TSS：総平方和
  RSS <- sum(resid^2)          #RSS：残差平方和
  R2 <- (TSS - RSS) / TSS      #R^2：決定係数
  return(R2)
}

#adj R^2: [Ref.: 同上]
adjR2 <- function(model) {
  resid <- resid(model)　　　　　　　　　　　　　　　　#残差
  y <- fitted(model) + resid　　　　　　　　　　　　　 #結果
  n <- length(y)　　　　　　　　　　　　　　　　　　　 #サンプルサイズ
  TSS.adj <- sum((y - mean(y))^2) / (n - 1)            #調整TSS
  SSR.adj <- sum(resid^2) / (n - length(coef(model)))  #調整RSS
  R2.adj <- 1 - SSR.adj / TSS.adj                      #調整R^2
  return(R2.adj)
}
