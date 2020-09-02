gencoordenadasaleatorias <- function(){
    a = runif(1)
    b = runif(1)
    x <- c(a,b)
    return(x)
}#este metodo genera un punto aleatorio en el cuadrado unitario

areafigura <- function(x1 = 0, x2 = 1 , y1 =0 , y2 = 0.5 , n = 1000000){ #por el momento esto calcula el area de un cuadrado, no sabemos como generar una figura diferente

    contador = 0 
    intentos = 0
    print("calculando...")
    for (i in 1:n){
        intentos = intentos+1
        vec = gencoordenadasaleatorias()
        if ((x1 <= vec[1]) && (vec[1] <= x2) && (y1<= vec[2]) && (vec[2] <= y2)){
            contador = contador + 1 
        }     
    }
    area = contador/intentos
    print("area = ")
    print(area)    
}
areafigura()