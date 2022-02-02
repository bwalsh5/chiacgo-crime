library(jsonlite)
library(tidyverse)
library(httr)
res <- GET('https://data.cityofchicago.org/resource/crimes.json')


data = fromJSON(rawToChar(res$content))

data$primary_type
data$date 

str_detect('AGGRAVATED', data$primary_type)

data %>% 
  filter(primary_type %in% "PROSTITUTION")  %>% 


write_csv(chi_ab2, file="~/Desktop/chi_ab.csv")

write.table(chi_ab, file="~/Desktop/chi_ab.csv", row.names=FALSE, na="", col.names = FALSE, sep=",")

str(chi_ab)

data1<-data.frame(lapply(chi_ab, as.character), stringsAsFactors=FALSE)
         
data %>% 
  filter(year %in% 2019)

library(lubridate)

