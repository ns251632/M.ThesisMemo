#model1: 偏回帰係数(B)を算出した回帰結果
  #df: 標準化しないデータフレーム
  #model1 <- glm(y ~ x1 + x2 + x3, family = (link = "identity"), data = df)
  
#model2: 標準偏回帰係数(beta)を算出した回帰結果
  #df_std: scale() で標準化したデータフレーム
  #model2 <- glm(y ~ x1 + x2 + x3, family = (link = "identity"), data = df_std)


#function
mREG_beta <- function(model1, model2){
  summary_B <- summary(model1)
  summary_beta <- summary(model2)
  #results
  result_B <- summary_B$coefficients[, 1]        #偏回帰係数B
  result_BCI <- confint(model1)                  #Bの95%CI
  result_beta <- summary_beta$coefficients[, 1]  #標準化偏回帰係数beta
  result_betaCI <- confint(model2)               #betaの95%CI
  result_BtP <- summary_B$coefficients[, 3:4]    #Bのt値・P値
  vif <- vif(model)  #VIFの算出
  VIF <- c(0, vif)   #切片部分に"0"記入
  #Table化
  table <- cbind(
    result_B, result_BCI, result_beta, result_betaCI, result_tP, VIF
  )
