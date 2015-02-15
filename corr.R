setwd("/Users/victoriahall/datasciencecoursera")

corr <- function(directory, threshold=0) {
        allfiles <- list.files(directory, full.names=TRUE)
        mydata <- data.frame()
        final <- numeric()
        for (i in 1:length(allfiles)) { 
                current_file <- read.csv(allfiles[i])
                good <- complete.cases(current_file)
                cases <- sum(good) 
                if(cases > threshold) {
                        x <- current_file[good,2]
                        y <- current_file[good,3]
                        final[i] <- cor(x,y)
                }
         }
        final[!is.na(final)]
}