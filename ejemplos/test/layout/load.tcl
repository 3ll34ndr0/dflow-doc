#-----------------------------------------------------

box 0 0 0 0
# Carga las celdas estándar:
lef read ../../../tech/osu035/osu035_stdcells.lef
#lef read /usr/local/share/qflow/tech/osu035/osu035_stdcells.lef

# def read map9v3_route.def
# Carga el diseño
def read map9v3.def

grid 1.6um 2.0um

snap grid

