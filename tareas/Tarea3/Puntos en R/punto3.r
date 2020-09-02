mediamuestral <- function(n , lamda){
    Mn = 0
    for(i in 1:n){
        a = rexp(1,lamda)
        Mn = Mn + a
      #  print(Mn)
      
    }
    Mn = Mn/n
    return(Mn)

}

ListaErrores <- function( tamMediaMuestal , k , lamda  ){
    #calculo la media muestral 100 veces
    Lista <- c()
    for(i in 1:k){
        var = mediamuestral(tamMediaMuestal,lamda)  - 1/lamda 
        Lista <- c(Lista , var)
    }
    Lista = sort(Lista,decreasing =FALSE )
    return(Lista)
}
Percentil <- function(numpercentil , lista){
    tamanolista = length(lista)
    cantidad = (numpercentil*tamanolista)/100
    resultadopercentil = lista[cantidad]
    return(resultadopercentil)
}



metodoZn <- function( Miu , desviacion , n ){
    Mn = mediamuestral(n , 1/0.1)
    Zn = (Mn - Miu) / (desviacion/sqrt(n)) 
    #print(Zn)
    return(Zn)
}

## aqui k = 1000
ListaErroresZn <- function( tamMediaMuestal , k , lamda  ){
    #calculo la media muestral 100 veces
    Lista <- c()
    for(i in 1:k){
        var = metodoZn( 10 , sqrt(100) , tamMediaMuestal )  - 0.25 #el percentil 60 de la normal estandar es 0.25
        Lista <- c(Lista , var)
    }
    Lista = sort(Lista,decreasing =FALSE )
    return(Lista)
}


main <- function(tamanomuestra, vecesquesecalculamediamuestral, lamda){
    nuestralista = ListaErrores(tamanomuestra , vecesquesecalculamediamuestral , lamda)

        ##vamos a hacer el histograma
    nombre =  paste("Histograma de errores para tamaño muestral n = "  ,toString(tamanomuestra))
    print(nombre)
    hist(nuestralista , main=nombre)

    ##el ejercicio dice que hay que calcular el percentil 60
    perce = Percentil(95, nuestralista)
    print("percentil 95: ")
    print(perce)


}
main2 <- function(tamanomuestra, vecesquesecalculamediamuestral, lamda){
    nuestralista = ListaErroresZn(tamanomuestra , vecesquesecalculamediamuestral , lamda)

        ##vamos a hacer el histograma
    nombre =  paste("Histograma de errores para tamaño muestral Zn  n = "  ,toString(tamanomuestra))
    print(nombre)
    hist(nuestralista , main=nombre)

    ##el ejercicio dice que hay que calcular el percentil 60
    perce = Percentil(60, nuestralista)
    print("percentil 60: ")
    print(perce)

}






#ya teniendo todo, calculamos el main para los valores dados
main(10 , 100, 0.1)
main(100 ,100, 0.1)
main(1000, 100, 0.1)
main(10000,100,0.1)

main2(10 , 1000, 0.1)
main2(100 ,1000, 0.1)
main2(1000, 1000, 0.1)
main2(10000,1000,0.1)
