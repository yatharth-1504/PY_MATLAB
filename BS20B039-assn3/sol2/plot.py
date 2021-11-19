import matplotlib.pyplot as plt  
x = [0, 20, 40, 60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300, 320, 340]
y = [77.0,	89.0,	77.0,	89.0,	101.0,	113.0,	77.0,	89.0,	101.0, 113.0,	125.0,	137.0,	149.0,	161.0,	173.0,	185.0,	197.0,	209.0]
plt.xlabel('Time in Hours')
plt.ylabel('Temprature')
plt.plot(x, y)
plt.title("Graphical representation of the data obtained from the above simulation")
plt.scatter(x,y)
