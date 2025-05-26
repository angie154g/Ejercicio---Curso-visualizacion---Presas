# Instalar paquetes si no los tienes
install.packages(c("WDI", "ggplot2", "dplyr", "sf", "rnaturalearth", "rnaturalearthdata", "leaflet", "plotly"))
install.packages("devtools")
devtools::install_github("ropensci/rnaturalearthhires")

#librerias
library(dplyr)
library(tidyr)
library(readr)
library(ggplot2)
library(sf)  # Para mapas
library(rnaturalearth)  # Mapas geoespaciales
library(rnaturalearthdata)  # Datos para mapas
library(leaflet)  # Para mapas interactivos
library(plotly)  # Para gráficos interactivos


#1 Verificar si los datos se pueden leer
# Leer un archivo CSV y guardarlo como un data frame
marzo_25 <- read.csv("Reporte_Presas_2025-03-01.csv")
marzo_24 <- read.csv("Reporte_Presas_2024-03-01.csv")
marzo_23 <- read.csv("Reporte_Presas_2023-03-01.csv")
marzo_15 <- read.csv("Reporte_Presas_2015-03-01.csv")
marzo_14 <- read.csv("Reporte_Presas_2014-03-01.csv")
marzo_13 <- read.csv("Reporte_Presas_2013-03-01.csv")
marzo_05 <- read.csv("Reporte_Presas_2005-03-01.csv")
marzo_04 <- read.csv("Reporte_Presas_2004-03-01.csv")
marzo_03 <- read.csv("Reporte_Presas_2003-03-01.csv")
marzo_95 <- read.csv("Reporte_Presas_1995-03-01.csv")
marzo_94 <- read.csv("Reporte_Presas_1994-03-01.csv")
marzo_93 <- read.csv("Reporte_Presas_1993-03-01.csv")

# 2. Mostrar las primeras filas del data frame
head(marzo_25)

# 3. tipos de variables presentes
str(marzo_25)


#4. tiene datos nulos(NA)
any(is.na(marzo_25))
any(is.na(marzo_24))
any(is.na(marzo_23))
any(is.na(marzo_15))
any(is.na(marzo_14))
any(is.na(marzo_13))
any(is.na(marzo_05))
any(is.na(marzo_04))
any(is.na(marzo_03))
any(is.na(marzo_95))
any(is.na(marzo_94))
any(is.na(marzo_93))


#5. Agrupa los datos por decadas
# 5.1 Agrega una columna a cada dataframe con la fecha en que se obtienen 
# los datos, es parte del nombre de archivo 
marzo_25 <- marzo_25 %>% mutate(año = 2025, decada = 2020)
marzo_24 <- marzo_24 %>% mutate(año = 2024, decada = 2020)
marzo_23 <- marzo_23 %>% mutate(año = 2023, decada = 2020) 
marzo_15 <- marzo_15 %>% mutate(año = 2015, decada = 2010)
marzo_14 <- marzo_14 %>% mutate(año = 2014, decada = 2010)
marzo_13 <- marzo_13 %>% mutate(año = 2013, decada = 2010)
marzo_05 <- marzo_05 %>% mutate(año = 2005, decada = 2000)
marzo_04 <- marzo_04 %>% mutate(año = 2004, decada = 2000)
marzo_03 <- marzo_03 %>% mutate(año = 2003, decada = 2000)
marzo_95 <- marzo_95 %>% mutate(año = 1995, decada = 1990)
marzo_94 <- marzo_94 %>% mutate(año = 1994, decada = 1990)
marzo_93 <- marzo_93 %>% mutate(año = 1993, decada = 1990)


# 5.2. Unir por decadas
decada_2020 <- bind_rows(marzo_25, marzo_24, marzo_23)
decada_2010 <- bind_rows(marzo_15, marzo_14, marzo_13)
decada_2000 <- bind_rows(marzo_05, marzo_04, marzo_03)
decada_1990 <- bind_rows(marzo_95, marzo_94, marzo_93)

# 6. Selecciona solo las columnas de interes: nombre comun, entidad, 
# almacenaje actual, % de llenado, año y decada. 
decada_2020 <- decada_2020 %>% select(Nombre.común, Entidad.federativa, 
                                      Almacenamiento.Actual..hm.., 
                                      X..de.llenado.actual, decada, año)
decada_2010 <- decada_2010 %>% select(Nombre.común, Entidad.federativa, 
                                      Almacenamiento.Actual..hm.., 
                                      X..de.llenado.actual,decada, año)
decada_2000 <- decada_2000 %>% select(Nombre.común, Entidad.federativa, 
                                      Almacenamiento.Actual..hm.., 
                                      X..de.llenado.actual, decada, año)
decada_1990 <- decada_1990 %>% select(Nombre.común, Entidad.federativa, 
                                      Almacenamiento.Actual..hm.., 
                                      X..de.llenado.actual, decada, año)

#7. conoce la estructura general de los dato con summary
summary(decada_2020)
summary(decada_2010)
summary(decada_2000)
summary(decada_1990)



# 8. buscar existencia de NA 
any(is.na(decada_2020))
any(is.na(decada_2000$X..de.llenado.actual)) 
any(is.na(decada_2010))
any(is.na(decada_2000))
any(is.na(decada_1990))


# 8.1 Remover filas con valores NA
decada_2020_sin_na <- decada_2020 %>% drop_na()
decada_2010_sin_na <- decada_2010 %>% drop_na()
decada_2000_sin_na <- decada_2000 %>% drop_na()
decada_1990_sin_na <- decada_1990 %>% drop_na()

# 9. convetir a nuemerico la columna % de llenado actual y la de almacenamiento
decada_2020_sin_na <- decada_2020_sin_na %>%
  mutate(X..de.llenado.actual = as.numeric(X..de.llenado.actual))
decada_2010_sin_na <- decada_2010_sin_na %>% 
  mutate(X..de.llenado.actual = as.numeric(X..de.llenado.actual))
decada_2000_sin_na <- decada_2000_sin_na %>% 
  mutate(X..de.llenado.actual = as.numeric(X..de.llenado.actual))
decada_1990_sin_na <- decada_1990_sin_na %>% 
  mutate(X..de.llenado.actual = as.numeric(X..de.llenado.actual))

#9.1 confirmar tipo de variable
str(decada_2020_sin_na$X..de.llenado.actual)
str(decada_2020_sin_na$Almacenamiento.Actual..hm..)

# 9.2 Conoce la esctuctura general de los datos con summary
summary(decada_2020_sin_na)
summary(decada_2010_sin_na)
summary(decada_2000_sin_na)
summary(decada_1990_sin_na)



#10. Calcular medidas de tendencia central para el almacenamiento actual
#10.1 Promedio
mean(decada_2020_sin_na$Almacenamiento.Actual..hm..)
mean(decada_2010$Almacenamiento.Actual..hm..)
mean(decada_2000$Almacenamiento.Actual..hm..)
mean(decada_1990$Almacenamiento.Actual..hm..)


#10.2 Mediana
median(decada_2020_sin_na$Almacenamiento.Actual..hm..)
median(decada_2010$Almacenamiento.Actual..hm..)
median(decada_2000$Almacenamiento.Actual..hm..)
median(decada_1990$Almacenamiento.Actual..hm..)

#10.3 sumatoria de almacenamemiento
sum(decada_2020$Almacenamiento.Actual..hm..)

#11 Unir todos los datos en un dataframe
df_presas_total <- bind_rows(decada_2020_sin_na, decada_2010_sin_na, decada_2000_sin_na, decada_1990_sin_na)

#12. Realizar un grafico facetado por decada de las variables almacenamiento y %
#12.1 Almacenamiento actual
ggplot(df_presas_total, aes(x = Entidad.federativa, y= Almacenamiento.Actual..hm..)) +
  geom_boxplot(fill = "steelblue") +
  facet_wrap(~ decada) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Distribución de llenado por entidad y década",
       x = "Entidad",
       y = "Almacenamiento en hm")


#12.2 % de llenado actual
ggplot(df_presas_total, aes(x = X..de.llenado.actual)) +
  geom_histogram(bins = 30, fill = "steelblue", color = "white") +
  facet_wrap(~ decada, scales = "free_y") +
  theme_minimal() +
  labs(title = "Distribución de llenado por década",
       x = "% de llenado actual",
       y = "Frecuencia")

#13. graficar presas por entidad 1993 y 2025
# Analizar los datos de 1993 y 2025
summary(marzo_93)
summary(marzo_25)

#crear variable de numero de presas por entidad
presas_por_entidad_93 <- marzo_03 %>%
  count(Entidad.federativa)
presas_por_entidad_25 <- marzo_25 %>%
  count(Entidad.federativa)

#Diferencia de presas entre 1993 y 2025
presas_93 <- presas_por_entidad_93 %>%
  rename(presas_1993 = n)

presas_25 <- presas_por_entidad_25 %>%
  rename(presas_2025 = n)
diferencia_presas <- full_join(presas_93, presas_25, by = "Entidad.federativa") %>%
  replace_na(list(presas_1993 = 0, presas_2025 = 0)) %>%
  mutate(diferencia = presas_2025 - presas_1993)
sum(diferencia_presas$diferencia)

#grafica de numero de presas en 1993
ggplot(presas_por_entidad_93, aes(x = Entidad.federativa, y = n )) +
  geom_bar( stat ="identity" , fill= "blue", color= "green", alpha = 0.8) +
  labs(title = "Numero de presas por entidad en 1993", x= "Entidad") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), text)  # Gira etiquetas

#grafica de numero de presas en 2025
ggplot(presas_por_entidad_25, aes(x = Entidad.federativa, y = n )) +
  geom_bar( stat ="identity" , fill= "yellow", color= "green", alpha = 0.8) +
  labs(title = "Numero de presas por entidad en 2025", x= "Entidad") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), text)  # Gira etiquetas



# 14. Encontrar las 5 entidades con mayor numero de presas
entidad_max_presas_93 <- presas_por_entidad_93 %>% arrange(desc(n)) %>% 
  slice(1:10) %>% mutate(año = "1993")
print(entidad_max_presas_93)

entidad_max_presas_25 <- presas_por_entidad_25 %>% arrange(desc(n)) %>% 
  slice(1:10) %>% mutate(año = "2025")
print(entidad_max_presas_25)

# Unir ambos en un solo dataset
presas_93_vs_25 <- bind_rows(entidad_max_presas_93, entidad_max_presas_25)

ggplot(presas_93_vs_25, aes(x = reorder(Entidad.federativa, n), y = n, fill = año)) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  labs(title = "Top 10 Entidades con mayor número de presas",
       x = "Entidad federativa",
       y = "Número de presas",
       fill = "Año") +
  coord_flip() +  # Gira la gráfica para mejor lectura
  theme_minimal()                        
                        
# 15. MAPA DE Presas en Mexico
# Cargar datos geoespaciales
mexico <- ne_states(country = "Mexico", returnclass = "sf")

# Revisar nombres para asegurarte que coincidan
unique(presas_por_entidad_25$Entidad.federativa)
unique(mexico$name)


# Unir con datos de presas por entidad 
mapa_con_datos <- mexico %>%
  left_join(presas_por_entidad_25, by = c("name" = "Entidad.federativa"))



# Crear el mapa simple

ggplot(mapa_con_datos) +
  geom_sf(aes(fill = n), color = "white") +
  scale_fill_gradient(low = "lightyellow", high = "darkgreen", na.value = "gray90") +
  labs(title = "Número de presas por entidad en México", fill = "Cantidad") +
  theme_minimal()


