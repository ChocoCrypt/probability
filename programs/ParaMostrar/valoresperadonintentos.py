from time import sleep
from random import randint
from os import system
#encuentra el minimo elemento de una lista
def min(lista):
    min = 10
    for i in range(0,len(lista)):
        if(min>=lista[i]):
            min = lista[i]
    return min
#genera una lista de n elementos aleatorios
def generarLista(tamanolista):
    Lista = []
    for i in range(0,tamanolista):
        exp = randint(1,10)
        Lista.append(exp)
    return Lista

n = int(raw_input("numero de intentos : "))
cuentatotal = 0
numlanzadas = 1.0
while(True):
    Lista = generarLista(n)
    minimo = min(Lista)
    cuentatotal = cuentatotal + minimo
    valoresperado = cuentatotal / numlanzadas
    numlanzadas = numlanzadas +1
    print("el valor esperado para " + str(n) + " intentos es de " + str(valoresperado))
