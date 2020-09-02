
from time import sleep
from random import randint
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

valoresesperados = []
for i in range(1,100):
    n = i
    cuentatotal = 0
    numlanzadas = 1.0
    for i in range(0,1000000):
        Lista = generarLista(n)
        minimo = min(Lista)
        cuentatotal = cuentatotal + minimo
        valoresperado = cuentatotal / numlanzadas
        numlanzadas = numlanzadas +1
        resp = round(valoresperado,4)
    print("el valor esperado para  " + str(n) + " intentos es de " + str(resp))
    valoresesperados.append(valoresperado)

informe = open("INFORME.txt" , "a")
for i in range(1,len(valoresesperados)):
    diferencia = valoresesperados[i] - valoresesperados[i-1]
    print("la diferencia en el intento " + str(i) + " es de " + str(diferencia))
    sleep(0.5)
    informe.write("la diferencia en el intento " + str(i) + " es de " + str(diferencia) + "\n")



for i in range(0,5):
    informe.write("\n")
informe.close()
