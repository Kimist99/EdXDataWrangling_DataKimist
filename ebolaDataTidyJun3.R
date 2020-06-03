#Practice with ebola data

#set working directory

#install tidyverse packages and library
install.packages("tidyverse")
library(tidyverse)

#Null values in age, systolic, diastolic column replaceds with column average

#import data
ebolaData1 <- read.csv("ebolaDemoVL.csv")
head(ebolaData1)

# create a table by mende ethnicity age 18 or over
ebolaAdultEthnicity <- ebolaData1 %>%
  filter(Ethnicity %in% c("Mende")) %>%
  filter(Age >= 18)

# Plot Discharge type of aboce dataset
#different color border on bars
ggplot(data = ebolaAdultEthnicity) +
  geom_bar(mapping = aes(x = DisType, color = DisType))

#Change color of bars to solid colors using fill
ggplot(data = ebolaAdultEthnicity) +
  geom_bar(mapping = aes(x = DisType, fill = DisType))

#add gender variable using fill aesthetic clarity
ggplot(data = ebolaAdultEthnicity) +
  geom_bar(mapping = aes(x = DisType, fill = Gender))
















