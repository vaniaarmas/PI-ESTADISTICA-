
#_____Tablas de frecuencia____
#utilizamos la matriz irirs

#-----------------------------
#  Exportación de la matriz 
#____________________________

#1.- exportación de matriz
data(iris)

#2.- Exploracion de la matriz 
# Tenemos 150 individuos y 5 variables 
dim(iris) 

#3.- Nombre de las columnas
colnames(iris)

#4.- Exploracion de especies 
iris$Species

#5.- Tipos de variables 
str(iris)

#6.- En busca de valores perdidos 
anyNA(iris)

#__________________________________
# Generación de tablas NO AGRUPADAS 
#__________________________________

#1.- Convertir la matriz de datos a un data frame,
# se agrupan los valores para la variable Petal.Length
# y se calcula la frecuancia absoluta. 

tabl_Pl<-as.data.frame(table(Pl=iris$Petal.Length))

#2.- visualizacion de la tabla de contingencia de 
# la variable Petal.length(Pl) y su respectiva frecuencia
# absoluta
tabl_Pl

#3.- Crear la tabla completa 
tabla1<-transform(tabl_Pl,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

#________________________________________
# Tablas agrupadas
#________________________________________
# Nota: Se debe tener previamente el calculo 
# de la amplitud y Rango 

#1.- Agrupación de la variable en clases (8 clases)
# 8 renglones.
tabla_clases<-as.data.frame(table(Petal.Length=factor(cut(iris$Petal.Length,breaks=8))))

tabla_clases

#2.- Construccion de tabla completa 
tabla2<-transform(tabla_clases,
                  freqAc=cumsum(Freq),
                  Rel=round(prop.table(Freq),3),
                  RelAc=round(cumsum(prop.table(Freq)),3))

tabla2
