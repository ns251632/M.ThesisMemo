#confirm NA
na.count <- function(data){
  result <- sapply(data, function(y) sum(is.na(y)))
  result
}
