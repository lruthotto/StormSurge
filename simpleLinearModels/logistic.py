#Question 1:
import numpy as np
import matplotlib.pyplot as plt
import scipy.integrate as sc
import scipy.stats as st
def logist_cont(y,t,r,k): #function that contains the differential equation
    return r*y*(1-y/k)
r=1 #growth rate
k=2 #carrying capacity
t=np.linspace(0,10,10000) # start time, end time, number of times steps
y0=0.2 #initial conditions
sol=sc.odeint(logist_cont, y0, t, args=(r, k)) #integrate the differential equartion
#plt.plot(t,sol) #plots function
#plt.show() #shows plot
#print(sol[5000][0]) #array and actual component of array
data=[k[0] for k in sol]
stand=np.std(data)
data2=[]
for l in data:
    data2.append(l+st.norm.rvs(loc=0, scale=stand, size=1))
plt.plot(t,data2)
plt.show()
