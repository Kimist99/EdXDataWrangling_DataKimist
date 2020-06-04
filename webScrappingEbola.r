#Section 2 Tidy Data: Web Scrapping
install.packages("tidyverse")

#import library for web scrapping in R
library(rvest)

#get Ebola data from website and get class info
url <- "https://www.cdc.gov/vhf/ebola/history/2014-2016-outbreak/cumulative-cases-graphs.html"
e <- read_html(url)
class(e)

#read in html nodes <> as a table and view data in second position
tab_e <- e %>% html_nodes("table")
tab_e <- tab_e[[2]]

#get data type
tab_e <- tab_e %>% html_table
class(tab_e)

#create table with number of cases and cases per month
tab_e <- tab_e %>% setNames(c("date", "Number of Ebola Cases per Month"))
head(tab_e)