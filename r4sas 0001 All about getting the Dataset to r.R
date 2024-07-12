# A Simple Program to Read Raw Data and Produce Summary
library(tidyverse)

# VERY SIMPLE Import data from r studio 
## Go to r studio Environment << import Dataset
## Import data from file: text, excel, SPSS, SAS or STATA
## The import utility will load the necessary library, 
## the code to read the data and view/print the data

# -- Just get to that and try different dataset, check the code or copy
# -- for the project 

#--------------------------------------------------------------#
## Create a dataset from r

#-------------------------------------
### 1 Create dataframe from data.frame
#-------------------------------------
name <-c('Madou', 'Salif', 'Mamou', 'Ali', 'Issouf', 'Adama')
sex  <-c('M', 'M', 'F', 'F', 'M', 'M')
age  <-c(42, 28, 30, 35, 42, 50)
height <-c(155, 175, 182, 168, 178, 169)
weight <-c(90, 95, 102, 92, 85, 70)

### the dataframe from the vector
df <-data.frame(name, sex, age, height, weight)
view(df)

### change df to tibble
tb <-as_tibble(df)
tb

### Sex need to be a factor variable for categorical analysis
tb$sex <-as.factor(tb$sex)

#-------------------------------------
### 2 Create dataframe from tibble 2
#-------------------------------------
tbx <-tribble(
    ~name,    ~sex, ~age, ~height, ~weight,
    'Madou',  'M',  42,   155,     90,
    'Salif',  'M',  28,   175,     95,
    'Mamou',  'F',  30,   182,     102,
    'Ali',    'F',  35,   168,     92,
    'Issouf', 'M',  42,   178,     85,
    'Adama',  'M',  50,   169,     70    
)
tbx
view(tbx)

tbx$sex <-as.factor(tbx$sex)
tbx

tbxx <-tibble(name, sex, age, height, weight)
view(tbxx)

tbxx$sex <-as.factor(tbxx$sex)
tbxx