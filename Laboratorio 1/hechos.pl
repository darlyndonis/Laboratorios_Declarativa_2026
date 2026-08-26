% Base de conocimiento 

superviviente(eric).
superviviente(timmy).
superviviente(kelvin).

mutante(virginia).
estado(virginia, no_aliado).

protagonista(eric).
edad(eric, 30).
edad(virginia, 25).
aliado_capturado(kelvin).
no_habla(kelvin).

tiene(eric, hacha).
tiene(eric, encendedor).

puede(kelvin, cargar_troncos).
puede(kelvin, construir).

necesita(eric, refugio).
necesita(eric, comida).
necesita(eric, agua).

tiene_zona(isla, la_superficie).
tiene_zona(isla, las_cuevas).
tiene_zona(isla, los_bunkeres).

enemigos(canibales, la_superficie).
enemigos(mutantes, las_cuevas).
enemigos(mutantes, la_superficie).

no_tiene(los_bunkeres, enemigos).
requiere(los_bunkeres, llaves).

nivel_peligro(las_cuevas, alto).
nivel_peligro(la_superficie, dia, medio).
nivel_peligro(la_superficie, noche, alto).

se_encuentran(troncos, la_superficie).
se_encuentran(piedras, la_superficie).





