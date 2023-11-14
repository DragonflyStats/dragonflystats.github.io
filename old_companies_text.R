
library(tidyverse)


companies_0 <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/linkedin/companies_0.csv")

head(companies_0)

companies_0 <- companies_0 %>% arrange(Company,Date,Followers)

companies_0 <- companies_0 %>% distinct()

write.csv(companies_0,"companies_0.csv",row.names = FALSE)


library(tidyverse)


tags<- read_csv("https://raw.githubusercontent.com/DragonflyStats/Projects/master/linkedin/tags.csv")

head(companies_0)

companies_0 <- companies_0 %>% arrange(Company,Date,Followers)

companies_0 <- companies_0 %>% distinct()

write.csv(companies_0,"companies_0.csv",row.names = FALSE)