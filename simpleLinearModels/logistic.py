#Question 1:
import numpy as np
import matplotlib.pyplot as plt
import scipy.integrate as sc
import scipy.stats as st
import filterpy.gh as fp
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
data=[k[0] for k in sol] #unpacks array into list
stand=np.std(data)/8 #calculates standard deviation
data2=[] #creates list for randomized data
for l in data:
    data2.append(l+st.norm.rvs(loc=0, scale=stand, size=1)) #varies the values
#plt.plot(t,data2)
#plt.show()
r=stand**2
p=np.std(data)
x=0.2
v=r*0.2*(1-0.2/k)
a=r-(2/k)*r*0.2
data3=[x]
#data4=fp.GHKFilter(x,v,a,1/1000,0.1,0.1,0.1)
#print(data4)
alpha=0.1
beta=0.1
gamma=0.1
for w in range(1,10000):
    x_n=x+alpha*(data2[w]-data[w])
    v_n=v+beta*((data2[w]-data[w])*1000)
    a_n=a+gamma*((data2[w]-data[w])*1000**2*2)
    data3.append(x_n)
    x=2*np.exp(x_n+0.2)/(np.exp(x_n+0.2)-1)
    v=r*v_n*(1-v_n/k)
    a=r-(2*v_n*r)/k
plt.plot(t,data)
plt.plot(t,data3)
plt.show()
