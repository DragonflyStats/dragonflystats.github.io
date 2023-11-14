library(data.table)
library(tidyverse)


# the command "rleid" is in the data.table R package
# rle stands for "Run Length Encoding"

N = 1000000
cat <- sample(c("Red","Black"),N,replace=T)



myDF <- data.frame(cat)

myDF


myDF <- myDF %>% mutate(group=rleid(cat)) %>% group_by(group) %>% mutate(index=row_number())

myDF