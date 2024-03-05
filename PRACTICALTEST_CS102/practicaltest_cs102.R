#A.
warpbreaks

#1
str(warpbreaks)

#2
warpbreaks$breaks <- as.integer(warpbreaks$breaks)
warpbreaks 

#3 
# error messages often indicate the underlying type of an object when there is a mismatch or the name not found. Common underlying types in R include numeric, character, integer etc.

#B.
#1
(txt <- readLines("C:/Users/missy/OneDrive/Documents/ALL 2ND SEM/CS102/SADSAD-BSIT-2B/PRACTICALTEST_CS102/exampleFile.txt"))

#2
comment <- txt[grepl("^//", txt)]
data <- txt[!grepl("^//", txt)]

#3
extract_date <- gsub("^// Survey data. Created : ", "", comment[1])
extract_date

#4
#a
splitdata<-(fieldList<- strsplit(data, split = ";"))

splitdata
#b
max_field <- max(sapply(splitdata, length))
max_field


splitdata <- lapply(splitdata, function(x) c(x, rep(NA, max_field - length(x))))
splitdata
#c
data_matrix <- matrix(unlist(splitdata), ncol = max_field, byrow = TRUE)
data_matrix

#d
field_names <- gsub("^// Field [0-3]+: ", "", comment[2:4])
field_names

colnames(data_matrix) <- field_names
data_matrix
 
 