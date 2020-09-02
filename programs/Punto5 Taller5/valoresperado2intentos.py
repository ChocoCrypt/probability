from time import sleep
from random import randint
numlanzadas = 1.0
valoresperado = 0
cuentatotal = 0
while(True):
    juego1 = randint(1,10)
    juego2 = randint(1,10)
    if(juego1<=juego2):
        minimo = juego1
    else:
        minimo = juego2
    cuentatotal = cuentatotal + minimo
    valoresperado = cuentatotal/numlanzadas
    numlanzadas = numlanzadas +1
    print("el valor esperado tiende a " + str(valoresperado))
