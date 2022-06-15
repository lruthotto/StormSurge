#Logistic model commonly used for population growth
import numpy as np
import matplotlib.pyplot as plt
import scipy.integrate as sc
def logist_cont(y,t,r,k):
    return r*y*(1-y/k)
r=1
k=2
t=np.linspace(0,10,10000)
y0=0.2
sol=sc.odeint(logist_cont, y0, t, args=(r, k))
plt.plot(t,sol)
plt.show()
