#ggplot2で作成した図の保存
save_fig <- function(x, y){
  name <- y
  dir <- getwd()               #Working Dir
  folder <- "2_fig"            #保存するフォルダ
  file <- paste(name, ".png")  #保存名 + 拡張子(.csv)
  result <- ggplot2::ggsave(
    file = paste(dir, folder, file, sep = "/"), plot = x
  )
  result
}
