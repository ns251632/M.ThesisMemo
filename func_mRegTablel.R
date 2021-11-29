#標準化偏回帰係数を求めない場合: Tableの表示
mREG_tbl <- function(model, summary){
  model <- model      #モデル
  summary <- summary  #結果の要約
  #結果の要約
  result_b <- summary$coefficients[, 1:2]   #偏回帰係数B
  result_CI <- confint(model)               #Bの95%CI
  result_tP <- summary$coefficients[, 3:4]  #t値・P値
  vif <- vif(model)  #VIFの算出
  VIF <- c(0, vif)   #切片部分に"0"記入
  #Table化
  table <- cbind(result_b, result_CI, result_tP, VIF)
}
