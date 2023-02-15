import numpy as np
from bolt_expressions import Scoreboard
import lib:global/scoreboard as scb
import lib:gui/shader as shader
import lib:gui/actionbar as action
import lib:animation/particle_fx as part
import lib:global/random as random

# hola = shdr.PostShader(Scoreboard("obj")["pibe"], 100, "lmao")
# hola.update("@a")
# Me la paso volviendo a revisar si andan los shaders así que dejo esto comentado para que escribirlo sea fácil

# Lista de funciones que quiero ejecutar como "main"
order = [
    "global/time/main"
]

for elem in order:
    function f"lib:{elem}"


health_bar = action.UnicodeBar(Scoreboard("health")["@s"], 106, "health_bar")
health_bar.generate_horizontal(4, 110, 106)
energy_bar = action.UnicodeBar(Scoreboard("energy")["@s"], 106, "energy_bar")
energy_bar.generate_horizontal(108, 2, 106)
combo_num = action.UnicodeBar(Scoreboard("combo")["@s"], 4, "combo_num")
combo_num.premade_source()

health_bar.update("@a", -239, 5)
energy_bar.update("@a", 127, 5)
combo_num.update("@a", 127, 18)
action.display("@a")

random.random_int(0, 9, Scoreboard("health")["@a"])

schedule function core:main 1t