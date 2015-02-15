setwd("/Users/victoriahall/datasciencecoursera")

complete <- function(directory, id = 1:332){
        files_list <- list.files(directory,full.names = TRUE)
        mydata <- data.frame()
        for (i in id){
                current_file <- read.csv(files_list[i]) 
                # count the number of complete cases in each csv file
                current_row <- c(i,sum(complete.cases(current_file))) 
                mydata <- rbind(mydata,current_row)
        }
        colnames(mydata) <- c("id","nobs")
        mydata
}