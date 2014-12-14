pollutantmean <- function(directory, pollutant, id = 1:332) {  

  file_list = list.files(directory, full.names = TRUE) 
  newSumTable <- vector()
  
  for (i in seq_along(id)) {    
    
    airpollution = read.csv(file_list[id[i]], header=TRUE)       
      if (pollutant == "sulfate") {
        newTable <- (na.omit(airpollution$sulfate))
        newSumTable <- c(newSumTable, newTable)
      } else if (pollutant == "nitrate") {
        newTable <- (na.omit(airpollution$nitrate)) 
        newSumTable <- c(newSumTable, newTable)
        }     
  }    

  mean(newSumTable) 
}