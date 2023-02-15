from bolt import Runtime
from bolt_expressions import Scoreboard
current_path = ctx.inject(Runtime).modules.current_path
import lib:global/scoreboard as scb
import lib:global/time as time
import lib:global/utils as utils
import lib:gui/shader as shader


merge function_tag minecraft:load {
    "values": [ current_path ]
}


# Lista de funciones que quiero ejecutar como "init"
order = [
    "global/utils/init",
    "global/time/init",
    "gui/hud/actionbar/init"
]

for elem in order:
    function f"lib:{elem}"


# Lista de scoreboards para crear
scoreboards = [
    "obj",
    "health"
]

for elem in scoreboards:
    scb.mk(elem)

# utils.reset_uid()

# Inicio del main loop
schedule function core:main 1t