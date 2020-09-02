gencoordenadasaleatorias <- function(){
    a = runif(1)
    b = runif(1)
    x <- c(a,b)
    return(x)
}#este metodo genera un punto aleatorio en el cuadrado unitario

calcular_pi <- function( c1 = 0.5 , c2 = 0.5 , r1 = 0.5  , r2 = 0.3 , n = 10000){ 

    contador1 = 0 
    contador2 = 0
    intentos = 0
   # print("calculando...")
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
    pi1 = area1/(r1*r1)
    pi2 = area2/(r2*r2)
    pi = (pi1+pi2)/2
   # print(pi)
    return (pi)
}
calcularerror <- function(n){
    pireal = 3.141592
    contadori = 0
    error = 0
    for(i in 1:100){
        pinuestro = calcular_pi(0.5 , 0.5 ,0.5 , 0.3 , n)
        error = error + abs(pireal-pinuestro)
        contadori = contadori+1
    }
    errortotal = error/contadori 
    print(errortotal)
}

errormin <- function(n){
    cont = 2110000 # sabemos que para un error de n = 0.01, hay que empezar desde 2110000 como minimo, pero este metodo como tal calcula el error minimo n, por lo tanto, el numero de iteraciones necesarias para un error n menor a 0.01 ,  es mayor a 2110000
    errormino = 1
    while(errormino>n){
        errormino = calcularerror(cont)
        cont = cont+1000
    }
    #si lo hago cont veces, el error estimado es de errormino
    print("el numero de iteraciones para que el error sea menor a n es de:")
    print(cont)
    print("el error mino es de:")
    print(errormino)
}
errormin(0.01)
