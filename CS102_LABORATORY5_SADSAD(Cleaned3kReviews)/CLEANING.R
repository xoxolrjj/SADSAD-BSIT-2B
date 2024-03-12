library(readxl)
library(lubridate)
library(dplyr)

cleaned_movies<- read_excel('C:/Users/User/Documents/Rstudio Files/cleaningDataSadsad/scrape3000reviews.xlsx')
cleaned_movies

str(cleaned_movies)
 
#cleaned dates
cleaned_movies$Date <- dmy(cleaned_movies$Date) 
as.POSIXct.Date(cleaned_movies$Date, format = "%d-%m-&Y")

#lowerCase
cleaned_movies$Movie_name <- tolower(cleaned_movies$Movie_name)  
cleaned_movies$User_Name <- tolower(cleaned_movies$User_Name)
cleaned_movies$Content_Review <- tolower(cleaned_movies$Content_Review)  
cleaned_movies$Reviews <- tolower(cleaned_movies$Reviews)  


#GETTING THE AVERAGE OF NULL VALUES

cleaned_movies$User_Rating <- as.numeric(gsub("/.*", "", cleaned_movies$User_Rating))
cleaned_movies$User_Rating <- ifelse(is.na(cleaned_movies$User_Rating), mean(cleaned_movies$User_Rating, na.rm = TRUE), cleaned_movies$User_Rating)
  

cleaned_movies 
 
write.csv(cleaned_movies, file= "cleaned_movies.csv")
