#Actividad 1
library(dplyr)
library(tidyr)
library(readr)
install.packages("ggplot2")
library(ggplot2)

#1.  cargar dataset de prueba 
# ruta del archivo
Reporte_presa_prueba <- "Reporte_Presas_2025-04-24.csv"

# cargar dataframe

presas_prueba <- read.csv(Reporte_presa_prueba)

# 2. REVISAR EL DATASET ----
# Nombres de las columnas
names(presas_prueba)

# Ver las primeras filas
head(presas_prueba)  # Muestra las primeras filas

# Información general del dataset
str(presas_prueba)  # Estructura de los datos



#3.  Resumen estadístico del dataset
summary(presas_prueba)

# 4️ IDENTIFICAR VALORES FALTANTES (NA) ----
print("4. Identificando valores faltantes...")

# Ver cuántos valores faltantes hay por columna
print("Número de valores NA por columna:")
colSums(is.na(presas_prueba))

# Mostrar las filas con valores faltantes
print("Filas con valores NA:")
presas_prueba[!complete.cases(presas_prueba), ]


# 5. Filtrar los datos: Presas vacias
presas_vacias <- presas_prueba %>% filter(X..de.llenado.actual == 0)

# contar cuantas presas hay por entidad
presas_por_entidad <- presas_prueba %>% count(Entidad.federativa)

# graficar presas en x y numero en y
ggplot(presas_por_entidad, aes(x = Entidad.federativa, y = n )) +
  geom_bar( stat ="identity" , fill= "seagreen", color= "green", alpha = 0.8) +
  labs(title = "Numero de presas por entidad", x= "Entidad") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), text)  # Gira etiquetas

# 6. Encontrar las 5 entidades con mayor numero de presas
entidad_max_presas <- presas_por_entidad %>% arrange(desc(n)) %>% slice(1, 2, 3, 4, 5)
print(entidad_max_presas)

#7. 



