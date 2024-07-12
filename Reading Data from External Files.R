# A Simple Program to Read Raw Data and Produce Summary
library(tidyverse)

# Import data from r studio 
## Go to r studio Environment << import Dataset
## Import data from file: text, excel, SPSS, SAS or STATA
## The import utility will load the necessary library, 
## the code to read the data and view/print the data

## Example 1 import text

mydata <- read.table("C:/Users/traor/Desktop/R Playground/Learning SAS to R from doc/SAS_Learning_SAS_by_Example_A_Programmers_Guide/Learning/mydata.txt", quote="\"", comment.char="", stringsAsFactors=TRUE)