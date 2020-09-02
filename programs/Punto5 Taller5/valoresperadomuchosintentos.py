from time import sleep
from random import randint
def min(lista):
    min = 20
    for i in range(0,len(lista)):
        if(min>=lista[i]):
            min = lista[i]
    return min

Lista = []
cuentatotal = 0
numlanzadas = 1.0
valoresperado = 0
while(True):
    a = randint(1,10)
    Lista.append(a)
    minimo = min(Lista)
    cuentatotal = cuentatotal + minimo
    valoresperado = cuentatotal / numlanzadas
    numlanzadas = numlanzadas +1
    print valoresperado
    sleep(0.005)
