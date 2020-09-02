gencoordenadasaleatorias <- function(){
    a = runif(1)
    b = runif(1)
    x <- c(a,b)
    return(x)
}#este metodo genera un punto aleatorio en el cuadrado unitario

calcular_area <- function(  n = 1000){ 

    contador1 = 0 
    intentos = 0
    lista <-  c()
    lista2 <- c()

   # print("calculando...")
    for (i in 1:n){
        lista2 <- c(lista,i)
        intentos = intentos+1
        vec = gencoordenadasaleatorias()
        #area s1 dada por la siguiente expresion :
        if ( (0 <= cos(pi*vec[1]) + sin(pi*vec[2])) &&  (cos(pi*vec[1]) + sin(pi*vec[2]) <= 1) ){
            contador1 = contador1 + 1 
            lista <- c(lista,1)
        } 
        else{
            lista <- c(lista,0)
        }

    }
    print("la lista es : ")
    print(lista)
    #hist(lista)
    #plot(lista2,lista)
    area1 = contador1/intentos
    print("area s1 es de :")
    print(area1)
    return (area1)
}


calcular_area()