# importing libraries for our analysis
library(ggplot2)
library(tidyverse)

# reading the data set into a variable called airlines
airlines <- read.csv("Airlines.csv")

# works same as View
print(airlines)

# viewing the columns in the data set
names(airlines) 

# viewing the data to see how it is structured
View(airlines)
glimpse(airlines) # this works similar to the print function
 
# Let's do some visualization

# first with a facet_wrap
ggplot(data=airlines)+ geom_point(mapping= aes(x=Airline, y=Flight ))+
facet_wrap(~DayOfWeek)+
  labs(title='Multivariate Analysis', caption= 'Data obtained from Kaggle')

ggplot(data=airlines)+ 
  geom_point(mapping=aes(x=Flight, y=Length, color=Airline))+
  labs(title='Flight Vs Length of Flight', caption ='Data obtained from Kaggle')



 # Univariate Analysis
names(airlines)
ggplot(data=airlines, aes(Flight))+geom_histogram(bins=3, binwidth = 3)+
  labs(title='Distribution of Flight variable', caption = 'Data obtained from Kaggle')
names(airlines)

ggplot(data=airlines, aes(DayOfWeek))+geom_histogram(bins=10, binwidth = 2)+
  labs(title = 'Distribution of DayOfWeek Variable', caption = 'Data obtained from Kaggle')


# lets do a bivariate Analysis
ggplot(data=airlines)+geom_bar(mapping=aes(x=Airline, fill=Delay))+
  labs(title = "Airlines Vs Delay", subtitle = 'Which Airline(s) had the most delays',
       caption='Data obtained from Kaggle')

       
#Multivariate Analysis
ggplot(data=airlines)+geom_point(mapping=aes(x=Flight, y=Airline, color=DayOfWeek))+
  labs(title = 'Flight Vs Airline for each DayOfWeek', caption = 'Data obtained from kaggle')

ggplot(data=airlines)+geom_bar(mapping=aes(x=Flight, color=DayOfWeek))+
  labs(title = 'Flight Vs Airline for each DayOfWeek', caption = 'Data obtained from kaggle')
