
#__________tablas de frecuencia___________
# utilizamos la matriz iris

#-----------------------------------------
# Exploración de la matriz 
#-----------------------------------------

#1.-Exportacion de matriz
data(iris)

#2.- Exploracion de la matriz
# Tenemos 150 individuis y 5 variables
dim(iris)

#3.- Nombre de las columnas
colnames(iris)

#4.- Exploracion de especies 
iris$Species

#5.- Tipos de variables 
str(iris)

#6.- En busca de valores perdidos 
anyNA(iris)

#-----------------------------
# Generacion de tablas NO AGRUPADAS
#-------------------------------

#1.- Convertir la matriz de datos a un data frame, 
# se agrupan los valores para la variable Petal.Length
# y se calcula la frecuencia absoluta. 

tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

# 2.- visualizacion de la tabla de contingencia de
# la variable Petal.legth y su respectiva frecuencia 
# absoluta
tabla_PL
# 3.- crear la tabla completa
tabla1<-transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))


#-------------------------------------------------
# Tablas agrupadas 
#-------------------------------------------------
# Nota: Se debe tener previamente el calculo
# de la amplitud y Rango

#1.- Agrupacion de la variable en clases (8 clases)
# 8 renglones.
tabla_clases<-as.data.frame(table(Petal.Length=factor(cut(iris$Petal.Length,
                                                          breaks=8))))
tabla_clases

# 2.- Construcción de tabla completa
tabla2<-transform(tabla_clases,
                  freqAc=cumsum(Freq),
                  Rel=round(prop.table(Freq),3),
                  RelAc=round(cumsum(prop.table(Freq)),3))
