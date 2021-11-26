#gtsummaryで作成した表の保存
save_tbl <- function(x, y){
  name = y
  dir <- getwd()               #Working Dir
  folder <- "1_tbl"            #保存するフォルダ
  file <- paste(name, ".png")  #保存名 + 拡張子(.csv)
  result <- gt::gtsave(
    as_gt(x), 
    file = paste(dir, folder, file, sep = "/")
  ) 
  result
}
