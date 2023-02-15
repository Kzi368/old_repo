import numpy as np
import lib:animation/particle_fx as part

PI = 3.1415926

def f(t):
    return np.array([0.0, t/PI, 0.0])
    
def g(point):
    x = point[0]
    y = point[1]
    z = point[2]
    return np.array([0.1*x, 0.05*x*z, 0.1*z])

def h(t):
    return np.array([0.1*np.cos(t)*2, -0.05*np.cos(t)*2*np.sin(t)*2, -0.1*np.sin(t)*2])
    # return np.array([np.cos(t)/10, 0, -np.sin(t)/10])

theta = PI/4

curve = part.ParametricCurve(f, 0, 10*PI).displace(np.array([0,-0.2,0]))
vel = part.ParametricCurve(h, 0, 10*PI)
# vel = g
part.CurveParticleEffect("flame", curve, vel, 300).play()