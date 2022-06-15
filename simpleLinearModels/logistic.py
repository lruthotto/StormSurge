#Logistic model commonly used for population growth
import numpy as np
import matplotlib.pyplot as plt
import scipy.integrate as sc
def logist_cont(y,t,r,k): #function that contains the differential equation
    return r*y*(1-y/k)
r=1 #growth rate
k=2 #carrying capacity
t=np.linspace(0,10,10000) # start time, end time, number of times steps
y0=0.2 #initial conditions
sol=sc.odeint(logist_cont, y0, t, args=(r, k)) #integrate the differential equartion
plt.plot(t,sol) #plots function
plt.show() #shows plot
print(sol[0][0]) #array and actual component of array
