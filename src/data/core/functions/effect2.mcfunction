import numpy as np
import lib:animation/particle_fx as part

def f(t):
    return np.array([np.cos(t)*2, -np.sin(t)*2, 0])

PI = 3.141592

curve = part.ParametricCurve(f, 0, 2*PI)
facing entity @s eyes anchored eyes:
    part.OrientedCurveParticleEffect("flame", curve, 100).play()