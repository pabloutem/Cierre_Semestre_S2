#jercicio 1

ejemplos = sample(c("positivo", "negativo", "neutros"), 100, replace = TRUE)
#creo una seccion llamada ejemplo el cual contiene al azar 100 elementos que dicen positivo negativo y neutros

#ejercicio 2

Count(ejemplos)
#no me lo reconoce como una formula

print(count(ejemplos))
#tampoco me lo reconoce como formula

tabla <- as.data.frame(table(cyl = ejemplos))
print(tabla)
#agrupa los valores de la variable ejemplos y calcula su frecuencia absoluta en una tabla

#ejercicio 2.1

ejemplos2 = sample(c("positivo", "negativo", "neutros"), 10, replace = TRUE)
View(ejemplos1)
View(ejemplos2)
identical(x = ejemplos1,y = ejemplos2)

#crea aleatoriamente 10 ejemplos entre positivo negativo y neutros en donde rstudio elige el orden de las variables


set.seed(10)
ejemplos_2 = sample(c("positivo", "negativo", "neutros"), 10, replace = TRUE)

set.seed(10)
ejemplos_3 = sample(c("positivo", "negativo", "neutros"), 10, replace = TRUE)

View(ejemplos_2)
View(ejemplos_3)
identical(x = ejemplos_2,y = ejemplos_3)

#en cambio cuando le damos la opcion de set.seed(10) (sembrar semilla o de donde parte la distribución de las variables
#le decimos a rstudio que al crear aleatoriamente sus variables lo haga con su combinación aleatoria numero 10
# por eso al crear nuestro ejemplo 2 y 3 pero le decimos que de todas las combinaciónes aleatorias
#que rstudio elige, lo haga con su elección numero "10" los dos ejemplos, por eso los resultados tienen el mismo orden.

set.seed(66)
ejemplos_4 = sample(c("positivo", "negativo", "neutros"), 10, replace = TRUE)
#creamos ejemplo 4 con set.seed 66

set.seed(66)
ejemplos_5 = sample(c("positivo", "negativo"), 10, replace = TRUE)
#le quitamos los neutros.

tabla_2 <- as.data.frame(table(cyl = ejemplos_4))
print(tabla_2)

tabla_3 <- as.data.frame(table(cyl = ejemplos_5))
print(tabla_3)

#si se concidera los neutros podemos concluir que el 40% piensa que afecta de forma positiva
#pero el 60% no esta a favor (por lo que puede estar en contra o no es significativa para la persona).
#por lo que en representatividad se puede decir que mas de la mitad de la poblacion no esta a favor sobre la crisis economica

#en cambio si no se consideran los neutros la representatividad cambia
#podriamos decir que el 70% de la población si esta a favor de la crisis economica o sea mas de la mitad de la población.

#ejercicio 4

contabilizador<-0

#creamos una sección con la variable numero 0

jugada<-sample(c(1:13),31,replace =TRUE)
View(jugada)

#creamos una sección simulando sacar cartas con 31 variables aleatoria entre el 1 y el 13 
# que son las posibles cartas (1,2,3,4,5,6,7,8,9,10,j,q,k,a).

for (i in 1:length(jugada)){
  
  if (jugada[i]==2|jugada[i]==3|jugada[i]==4|jugada[i]==5|jugada[i]==6){
    
    contabilizador<-contabilizador+1
    
  }else if (jugada[i]==1|jugada[i]==10|jugada[i]==11|jugada[i]==12|jugada[i]==13){
    
    contabilizador<-contabilizador-1
    
  }else if (jugada[i]==7|jugada[i]==8|jugada[i]==9){
    
    contabilizador<-contabilizador+0
    
  }
  
}
#creación de variable para saber en cuanto quedara despues del if 

#ejercicio 5

set.seed(20)

contabilizador<-0

jugada<-sample(c(1:13),31,replace =TRUE)

for (i in 1:length(jugada)){
  
  if (jugada[i]==2|jugada[i]==3|jugada[i]==4|jugada[i]==5|jugada[i]==6){
    
    contabilizador<-contabilizador+1
    
  }else if (jugada[i]==1|jugada[i]==10|jugada[i]==11|jugada[i]==12|jugada[i]==13){
    
    contabilizador<-contabilizador-1
    
  }else if (jugada[i]==7|jugada[i]==8|jugada[i]==9){
    
    contabilizador<-contabilizador+0
    
  }
  
}

#el contabilizador queda en 7 lo que es positivo y es probable que salgan 
#desde ahora cartas mas bajas.

#si eligiera set.speed 50

set.seed(50)

contabilizador<-0

jugada<-sample(c(1:13),31,replace =TRUE)

for (i in 1:length(jugada)){
  
  if (jugada[i]==2|jugada[i]==3|jugada[i]==4|jugada[i]==5|jugada[i]==6){
    
    contabilizador<-contabilizador+1
    
  }else if (jugada[i]==1|jugada[i]==10|jugada[i]==11|jugada[i]==12|jugada[i]==13){
    
    contabilizador<-contabilizador-1
    
  }else if (jugada[i]==7|jugada[i]==8|jugada[i]==9){
    
    contabilizador<-contabilizador+0
    
  }
  
}

#el contabilizador queda en -5 lo que es negativo y es probable que salgan desde ahora cartas
#mas bajas.
