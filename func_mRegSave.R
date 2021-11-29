#data frame形式の結果出力
EZsave <- function(tbl, name){
  name <- name
  table <- tbl
  dir <- getwd()               #Working Dir
  folder <- "1_tbl"            #保存するフォルダ
  file <- paste(name, ".csv")  #保存名 + 拡張子(.csv)
  Path <- paste(dir, folder, file, sep = "/")
  path.name <- print(Path)
  write.csv(table, path.name)  #".csv"で保存
}
