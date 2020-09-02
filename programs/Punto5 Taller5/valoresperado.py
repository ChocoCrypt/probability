from random import randint
from time import sleep
numlanzadas = 1.0
valoresperado = 0
cuentatotal = 0
while(True):
    a = randint(1,10)
    cuentatotal = cuentatotal + a
    valoresperado = cuentatotal / numlanzadas
    numlanzadas = numlanzadas + 1
    print ("el valor esperado tiende a " + str(valoresperado))
