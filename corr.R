corr <- function(directory, threshold = 0) {
 
  file_list = list.files(directory, full.names = TRUE) ## build list of files names is directory
  newTable4 <- data.frame() 
  cor_vector <- vector()
  fill_vector <- c(0)
  fill_vector2 <- fill_vector[0]
  
  
  for (i in 1:length(file_list)) { 
    myTable <- complete(directory, i)
    if (myTable[1,2] >= threshold){
    ##   print("yes") 
       pollutiondata <- read.csv(file_list[i], header=TRUE)      
       complete_recs <- na.omit(pollutiondata)  
       sul_var <- complete_recs$sulfate
       nit_var <- complete_recs$nitrate
       cor_vector <- c(cor_vector, cor(sul_var, nit_var))
    } else {
      cor_vector <- c(cor_vector, fill_vector2)
    }
  }
  cor_vector
}
