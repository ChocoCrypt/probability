gencoordenadasaleatorias <- function(){
    a = runif(1)
    b = runif(1)
    x <- c(a,b)
    return(x)
}#este metodo genera un punto aleatorio en el cuadrado unitario

areafigura <- function( c1 = 0.5 , c2 = 0.5 , r1 = 0.1  , r2 = 0.2 , n = 100000){ #arandela con 

    contador1 = 0 
    contador2 = 0
    intentos = 0
    print("calculando...")
    for (i in 1:n){
        intentos = intentos+1
        vec = gencoordenadasaleatorias()
        #sabemos si un punto cayo en el circulo de radio r1
        if (  ((vec[1]-c1)*(vec[1]-c2) + (vec[2]-c1)*(vec[2]-c2))<=(r1 * r1)   ){
           # print("cayo en el circulo")
            contador1 = contador1 + 1 
        } 
        #ahora para el circulo de radio r2    
        if (  ((vec[1]-c1)*(vec[1]-c2) + (vec[2]-c1)*(vec[2]-c2))<=(r2 * r2)   ){
           # print("cayo en el circulo")
            contador2 = contador2 + 1 
        } 
    }
    area1 = contador1/intentos
    area2 = contador2/intentos
    print("area circulo radio r1 : ")
    print(area1)    
    print("area circulo radio r2 : ")
    print(area2)
    print("el area total de la arandela es :")
    if(area1<area2){
        print(area2-area1)
    }
    else{
        print(area1-area2)
    }
}
areafigura()