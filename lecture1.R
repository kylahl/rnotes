#lecture 1 notes
#https://nbviewer.org/github/ambujtewari/stats306-fall2017/blob/master/Lecture00.ipynb

#data visualization section-----------------------------------------------------
library(tidyverse)

#data
print(mpg)

#plot data
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cty, y = hwy))

#plot data by class
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cty, y = hwy, color = class))

#data transformation section----------------------------------------------------
library(nycflights13)

#data
print(flights)

#filter data
jan_flights = filter(flights, month == 1)
filter(jan_flights, dep_delay > 60) #fligths less than an hour

#sort by departure delays, longest delays first
arrange(jan_flights, desc(dep_delay))