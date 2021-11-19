from random import randint 
To = 77
slope = 0.60
t = 0
T = 0
tempvstime = [77]
counter = 0
while T <= 200:
  t = t + 20 
  T = (slope)*t + To
  value = randint(0, 15)
  if value == 1: 
    T = 77
    t = 0
  tempvstime.append(T)
  counter = counter + 1
  if counter == 18:
    break
print("The simulation ends as time reaches ", counter*20 , "hours", "that is nearly ", (counter*20)//24 , "days")
import pandas as pd
h = []
for i in range(len(tempvstime)):
  h.append([i*20 , tempvstime[i]])
pd.DataFrame(h, columns=["-Time in hours-", "-TEMPRATURE-"])
