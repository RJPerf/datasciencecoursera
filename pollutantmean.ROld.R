pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  for(i in id) {
    charid <- toString(id) ## convert id to string
    charidzeropad <- str_pad(charid, width=3, pad="0") ## pad filename with zeros if needed
    myfilename <- paste("//users/ralphperfetto1/Documents/Coursera/datasciencecoursera/", directory, "/", charidzeropad, ".csv", sep="")
    mydata <- read.csv(file=myfilename, head=TRUE, sep=",")
    means[i] <- mean(mydata$sulfate, na.rm = TRUE)
  }
  
  means
}
