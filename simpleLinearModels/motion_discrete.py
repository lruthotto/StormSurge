#Question 1:
import numpy as np
import matplotlib.pyplot as plt
import scipy.integrate as sc
import scipy.stats as st
import filterpy.gh as fp
def motion_disc(x,v,a,dt): #function that contains the differential equation
    x_n = x+dt*v+a*0.5*dt**2
    v_n = v+dt*a
    a_n = a
    return x_n, v_n, a_n
def abg(x, v, a, dt, alpha, beta, gamma, z): # function that contains the differential equation
    x_n1 = x+alpha*(z-x)
    v_n1 = v+beta*((z-x)/dt)
    a_n1 = a+gamma*((z-x)/(0.5*dt**2))
    return x_n1, v_n1, a_n1
x = 1000
v = 50
a = -2
alpha = 0.5
beta = 0.4
gamma = 0.1
data = [x]
data_v = [v]
data_a = [a]
bad_data = [float(x + st.norm.rvs(loc=0,scale=10000,size=1))]
abg_data = [data[0]]
dt = [w*5 for w in range(1,13)]
for i in range(1,13):
    x_n, v_n, a_n = motion_disc(x, v, a, dt[i-1])
    data.append(x_n)
    z = x_n + st.norm.rvs(loc=0, scale=5000, size=1)
    bad_data.append(float(z))
    x_a, v_a, a_a = abg(x_n, v_n, a_n, 1, alpha, beta, gamma, float(z))
    x = x_a
    v = v_a
    a = a_a
    abg_data.append(x)
t=[0] + dt
#plt.plot(t, bad_data)
plt.plot(t, data)
#plt.plot(t, abg_data)
plt.show()