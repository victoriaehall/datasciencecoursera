setwd("/Users/victoriahall/datasciencecoursera")

pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## read all files into R
        allfiles <- list.files(directory, full.names=TRUE)
        data <- data.frame()
        for (i in id) {
                data <- rbind(data, read.csv(allfiles[i]))
        }
        datasubset <- data[ ,pollutant]
        mean(datasubset, na.rm=T)
}