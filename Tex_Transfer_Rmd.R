

myList <- list.files("C:/Users/Kevin/Documents/GitHub/rpubs/TexFiles/")

for(i in 1:length(myList)){
  Source <- myList[i]
  Target <- gsub(".[T|t]ex",".Rmd",Source)
  Target <- paste0("C:/Users/Kevin/Documents/GitHub/rpubs/RMDfiles/",Target)
  myText <- readLines(paste0("C:/Users/Kevin/Documents/GitHub/rpubs/TexFiles/",Source))
  writeLines(myText,Target)
  
}