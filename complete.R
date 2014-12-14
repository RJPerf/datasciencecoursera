complete <- function(directory, id = 1:332) {  
  
  file_list = list.files(directory, full.names = TRUE) ## build list of files names is directory
  newTable <- vector() 
  
  for (i in 1:length(id)) {    
    
    airpollution = read.csv(file_list[id[i]], header=TRUE)      
    completerecord <- na.omit(airpollution)  
    newTable <- rbind(newTable, c(id[i], NROW(completerecord)))  
    }       
  
  colnames(newTable) <- c("id","nobs") 
  newTable2 <- as.data.frame(newTable)
  newTable2
}