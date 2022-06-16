#Question 1:
import numpy as np
import matplotlib.pyplot as plt
import scipy.integrate as sc
import scipy.stats as st
import filterpy.gh as fp
def motion_disc(x,v,a,dt): #function that contains the differential equation
    x_n = x+dt*v+a*0.5*dt**2    #motion of position
    v_n = v+dt*a    #change in velocity
    a_n = a     #change in acceleration
    return x_n, v_n, a_n
def abg(x, v, a, dt, alpha, beta, gamma, z): # function that contains the differential equation
    x_n1 = x+alpha*(z-x)       #position adjustment
    v_n1 = v+beta*((z-x)/dt)    #velocity adjustment
    a_n1 = a+gamma*((z-x)/(0.5*dt**2))  #acceleration adjustment
    return x_n1, v_n1, a_n1
x = 30000 #initial position
v = 50 #inital velocity
a = 0 #initial acceleration
alpha = 0.5 #alpha coefficient
beta = 0.4 #beta coefficient
gamma = 0.1 #gamma coefficient
data = [x] #calculation data
data_v = [v]
data_a = [a]
#bad_data = [float(x + st.norm.rvs(loc=0,scale=10000,size=1))]
bad_data = [x] #data from measurement
abg_data = [data[0]] #data after abg adjustment
dt=5 #time step
meas = [30160, 30365, 30890, 31050, 31785, 32215, 33130, 34510, 36010, 37265] #measurements
for i in range(1,11):
    x_n, v_n, a_n = motion_disc(x, v, a,dt)
    data.append(x_n)
    #z = x_n + st.norm.rvs(loc=0, scale=500, size=1)
    z = meas[i-1]
    bad_data.append(float(z))
    x_a, v_a, a_a = abg(x_n, v_n, a_n, dt, alpha, beta, gamma, float(z))
    x = x_a
    v = v_a
    a = a_a
    abg_data.append(x)
t = [w*dt for w in range(0,11)] #time domain for plotting
plt.plot(t, bad_data)
plt.plot(t, data)
plt.plot(t, abg_data)
plt.show()
