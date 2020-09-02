sayHello <- function(){
   print('camilo es tremenda loquita')
}
binomial <- function(n=1 , p=0.5){
   cont = 0
   for (i in 1:n) {
      x <- runif(1)
      if(x < p){
         cont = cont+1
   }
        }
   return(cont)
}
geometrica<-function(p = 0.5){
   res = 0 
   cont = 0 
   while(res == 0){
      cont =  cont+1
      a = runif(1)
      if(a<p){
         res = 1
      }
   }
   return (cont)
}
bernoulli <-function(p=0.5){
   x <- runif(1)
   if(x < p){
      return (1)
   }
   else{
      return (0)
   }
}


puntocuarto <- function(){
   mylist <- c()
   contunos = 0
   contceros = 0
   for(i in 1:2000){
      if(bernoulli() ==1){
         mylist <- c(mylist , 1)
         contunos = contunos+1
      }
      else{
         mylist<- c(mylist , 0)
         contceros = contceros+1
         
      }
   }
   hist(mylist)
   print("unos:")
   print(contunos) 
   print("ceros:") 
   print( contceros) 
}

puntocuarto()

