library(data.table)

dt1 <- data.table(yr=c(2010,2010,2011,2011),
                  val=c(1500,3000,2000,1100),
                  x=c("a","b","a","b"))


ggplot() + geom_bar(data=dt1, aes(x=yr, y=val,fill=x),stat="identity") +
  scale_x_continuous(breaks=dt1$yr)


  dt1[,alphayr:=ifelse(yr==2011,.5,1)]
  
ggplot() + geom_bar(data=dt1, aes(x=yr, y=val,fill=x, alpha=alphayr),stat="identity") +
  scale_x_continuous(breaks=dt1$yr)


dt1

