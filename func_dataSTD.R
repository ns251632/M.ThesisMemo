#データの標準化
data_std <- function(data){
  df_std1 <- data
  df_std2 <- scale(df_std1)       #データの標準化(正規化)
  df_std3 <- data.frame(df_std2)  #data frame に戻す
}
