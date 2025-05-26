Actividad Transversal: Visualización de Datos
================

# **Semana 1: Un vistazo a los datos**

1.  CARGAR DATASET DE PRUEBA

``` r
# Ruta del archivo
Reporte_presa_prueba <- "Reporte_Presas_2025-04-24.csv"
# Cargar dataframe
presas_prueba <- read.csv(Reporte_presa_prueba)
```

2.  EXPLORACION DEL DATASET\*

``` r
# Nombres de las columnas
names(presas_prueba)
```

    ##  [1] "X."                          "Nombre.de.presa"            
    ##  [3] "Nombre.común"                "Organismo.de.cuenca"        
    ##  [5] "Entidad.federativa"          "NAME.Elevación..msnm."      
    ##  [7] "NAME.Almacenamiento..hm.."   "NAMO.Elevación..msnm."      
    ##  [9] "NAMO.Almacenamiento..hm.."   "Elevación.Actual..msnm."    
    ## [11] "Almacenamiento.Actual..hm.." "X..de.llenado.actual"

``` r
# Ver las primeras filas
head(presas_prueba)  # Muestra las primeras filas
```

    ##    X.       Nombre.de.presa               Nombre.común
    ## 1 210 Francisco Zarco, Dgo.         Las Tórtolas, Dgo.
    ## 2 209 Francisco Villa, Dgo.            El Bosque, Dgo.
    ## 3 208   Las Vírgenes, Chih. Francisco I. Madero, Chih.
    ## 4 207   Miguel Alemán, Zac.               Excamé, Zac.
    ## 5 206     El Estribón, Jal.          El Estribón, Jal.
    ## 6 205        El Salto, Jal.             El Salto, Jal.
    ##           Organismo.de.cuenca Entidad.federativa NAME.Elevación..msnm.
    ## 1 Cuencas Centrales del Norte            Durango               1210.05
    ## 2              Pacífico Norte            Durango               1996.13
    ## 3                   Río Bravo          Chihuahua               1242.56
    ## 4     Lerma-Santiago-Pacífico          Zacatecas               1704.50
    ## 5     Lerma-Santiago-Pacífico            Jalisco               1881.41
    ## 6     Lerma-Santiago-Pacífico            Jalisco               1812.50
    ##   NAME.Almacenamiento..hm.. NAMO.Elevación..msnm. NAMO.Almacenamiento..hm..
    ## 1                   383.160               1208.20                   309.240
    ## 2                    96.570               1993.00                    73.260
    ## 3                   477.622               1239.30                   333.320
    ## 4                    70.920               1703.40                    64.530
    ## 5                     7.740               1880.00                     6.378
    ## 6                   118.540               1810.16                    85.000
    ##   Elevación.Actual..msnm. Almacenamiento.Actual..hm.. X..de.llenado.actual
    ## 1                 1201.92                     128.165                   41
    ## 2                 1990.81                      59.342                   81
    ## 3                 1224.10                      38.889                   12
    ## 4                 1695.03                      26.914                   42
    ## 5                 1878.15                       5.048                   79
    ## 6                 1805.87                      52.713                   62

``` r
# Información general del dataset
str(presas_prueba)  # Estructura de los datos
```

    ## 'data.frame':    210 obs. of  12 variables:
    ##  $ X.                         : int  210 209 208 207 206 205 204 203 202 201 ...
    ##  $ Nombre.de.presa            : chr  "Francisco Zarco, Dgo." "Francisco Villa, Dgo." "Las Vírgenes, Chih." "Miguel Alemán, Zac." ...
    ##  $ Nombre.común               : chr  "Las Tórtolas, Dgo." "El Bosque, Dgo." "Francisco I. Madero, Chih." "Excamé, Zac." ...
    ##  $ Organismo.de.cuenca        : chr  "Cuencas Centrales del Norte" "Pacífico Norte" "Río Bravo" "Lerma-Santiago-Pacífico" ...
    ##  $ Entidad.federativa         : chr  "Durango" "Durango" "Chihuahua" "Zacatecas" ...
    ##  $ NAME.Elevación..msnm.      : num  1210 1996 1243 1704 1881 ...
    ##  $ NAME.Almacenamiento..hm..  : num  383.16 96.57 477.62 70.92 7.74 ...
    ##  $ NAMO.Elevación..msnm.      : num  1208 1993 1239 1703 1880 ...
    ##  $ NAMO.Almacenamiento..hm..  : num  309.24 73.26 333.32 64.53 6.38 ...
    ##  $ Elevación.Actual..msnm.    : num  1202 1991 1224 1695 1878 ...
    ##  $ Almacenamiento.Actual..hm..: num  128.16 59.34 38.89 26.91 5.05 ...
    ##  $ X..de.llenado.actual       : chr  "41" "81" "12" "42" ...

``` r
summary(presas_prueba) # Resumen estadistico
```

    ##        X.         Nombre.de.presa    Nombre.común       Organismo.de.cuenca
    ##  Min.   :  1.00   Length:210         Length:210         Length:210         
    ##  1st Qu.: 53.25   Class :character   Class :character   Class :character   
    ##  Median :105.50   Mode  :character   Mode  :character   Mode  :character   
    ##  Mean   :105.50                                                            
    ##  3rd Qu.:157.75                                                            
    ##  Max.   :210.00                                                            
    ##  Entidad.federativa NAME.Elevación..msnm. NAME.Almacenamiento..hm..
    ##  Length:210         Min.   :   1.4        Min.   :    1.00         
    ##  Class :character   1st Qu.: 301.2        1st Qu.:   18.52         
    ##  Mode  :character   Median :1583.5        Median :   55.48         
    ##                     Mean   :1268.2        Mean   :  795.03         
    ##                     3rd Qu.:1941.2        3rd Qu.:  389.41         
    ##                     Max.   :2697.8        Max.   :19736.40         
    ##  NAMO.Elevación..msnm. NAMO.Almacenamiento..hm.. Elevación.Actual..msnm.
    ##  Min.   :   1          Min.   :    0.762         Min.   :   0.88        
    ##  1st Qu.: 294          1st Qu.:   14.477         1st Qu.: 285.83        
    ##  Median :1580          Median :   41.168         Median :1578.10        
    ##  Mean   :1265          Mean   :  568.210         Mean   :1257.19        
    ##  3rd Qu.:1940          3rd Qu.:  249.993         3rd Qu.:1937.74        
    ##  Max.   :2697          Max.   :13169.630         Max.   :2693.13        
    ##  Almacenamiento.Actual..hm.. X..de.llenado.actual
    ##  Min.   :   0.000            Length:210          
    ##  1st Qu.:   5.804            Class :character    
    ##  Median :  18.480            Mode  :character    
    ##  Mean   : 261.856                                
    ##  3rd Qu.: 109.117                                
    ##  Max.   :6301.490

``` r
colSums(is.na(presas_prueba)) #Identificar valores faltantes
```

    ##                          X.             Nombre.de.presa 
    ##                           0                           0 
    ##                Nombre.común         Organismo.de.cuenca 
    ##                           0                           0 
    ##          Entidad.federativa       NAME.Elevación..msnm. 
    ##                           0                           0 
    ##   NAME.Almacenamiento..hm..       NAMO.Elevación..msnm. 
    ##                           0                           0 
    ##   NAMO.Almacenamiento..hm..     Elevación.Actual..msnm. 
    ##                           0                           0 
    ## Almacenamiento.Actual..hm..        X..de.llenado.actual 
    ##                           0                           0

# **Semana 2: Definición del problema y selección del dataset**

**Justificación del dataset elegido** Elegí este conjunto de datos
porque me permite responder la pregunta: ¿Cuál es la variación del
volumen de agua de las presas de México anualmente? Este dataset
contiene un historial del volumen de las presas en México, lo que
permite consultar los datos correspondientes a fechas específicas.

Para este ejercicio, consideré el 1 de marzo de tres años consecutivos
en cuatro décadas, iniciando en la década de 1990 con los años 1993,
1994 y 1995, y concluyendo con la década de 2020 con los años 2023, 2024
y 2025.

Los datos son obtenidos por la CONAGUA como parte de un programa de
monitoreo de presas, y se publican en su página web oficial:
<https://sinav30.conagua.gob.mx:8080/Presas/>. Se trata de una fuente
confiable, con datos públicos que se actualizan regularmente.

El tamaño del conjunto de datos es adecuado para responder la pregunta,
ya que permite tomar información del 1 de marzo de los años 1993, 1994,
1995, 2003, 2004, 2005, 2013, 2014, 2015, 2023, 2024 y 2025. Esto
proporciona una muestra suficiente para el análisis, al incluir tres
años consecutivos de cuatro décadas diferentes.

Esta información puede ser manejada en R sin problemas de rendimiento.
El dataset incluye 12 variables, de las cuales utilizaré: nombre de la
presa, municipio, estado, volumen máximo y volumen a la fecha. El resto
de las variables serán eliminadas del análisis.

Los datos se obtienen en formato CSV, el cual se puede cargar en R
utilizando la función read.csv(). Las variables están tipificadas como
int (enteros), chr (texto) y num (números reales). No hay presencia de
datos nulos (NA), por lo tanto, no es necesario realizar un proceso de
limpieza o eliminación de valores faltantes.

**Preguntas de análisis** ¿Cuál es la variación del volumen de agua de
las presas de México anualmente el 1 de marzo? ¿Cuál es el número de
presas por entidad federativa? ¿Qué entidades federativas tienen mayor
número de presas?

``` r
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

# 2. Mostrar las primeras filas de data frame
head(marzo_25)
```

    ##    X.                          Nombre.de.presa       Nombre.común
    ## 1   1                         El Bosque, Mich.   El Bosque, Mich.
    ## 2 129                          La Calera, Gro.    La Calera, Gro.
    ## 3  27                José López Portillo, N.L. Cerro Prieto, N.L.
    ## 4  85 Sistema Lagunario del Río Tamesí, Tamps.    Tampico, Tamps.
    ## 5  58                       El Moralillo, Ver.     Piedra Labrada
    ## 6  49                             Nexapa, Pue.       Nexapa, Pue.
    ##   Organismo.de.cuenca              Entidad.federativa NAME.Elevación..msnm.
    ## 1              Balsas                       Michoacán               1743.00
    ## 2              Balsas                        Guerrero                122.62
    ## 3           Río Bravo                      Nuevo León                285.50
    ## 4         Golfo Norte                      Tamaulipas                  1.40
    ## 5        Golfo Centro Veracruz de Ignacio de la Llave                115.94
    ## 6        Golfo Centro                          Puebla               1362.35
    ##   NAME.Almacenamiento..hm.. NAMO.Elevación..msnm. NAMO.Almacenamiento..hm..
    ## 1                   220.100               1741.40                   202.400
    ## 2                    34.193                118.00                     9.393
    ## 3                   393.000                282.52                   300.000
    ## 4                   854.000                  1.00                   676.000
    ## 5                     8.126                110.78                     2.500
    ## 6                    15.313               1360.00                    12.500
    ##   Elevación.Actual..msnm. Almacenamiento.Actual..hm.. X..de.llenado.actual
    ## 1                 1733.44                     123.428                   61
    ## 2                  118.41                      10.918                  116
    ## 3                  283.86                     340.000                  113
    ## 4                    1.12                     730.000                  108
    ## 5                  110.86                       2.553                  102
    ## 6                 1360.18                      12.750                  102

``` r
# 3. Tipos de variables presentes
str(marzo_25)
```

    ## 'data.frame':    210 obs. of  12 variables:
    ##  $ X.                         : int  1 129 27 85 58 49 139 138 45 150 ...
    ##  $ Nombre.de.presa            : chr  "El Bosque, Mich." "La Calera, Gro." "José López Portillo, N.L." "Sistema Lagunario del Río Tamesí, Tamps." ...
    ##  $ Nombre.común               : chr  "El Bosque, Mich." "La Calera, Gro." "Cerro Prieto, N.L." "Tampico, Tamps." ...
    ##  $ Organismo.de.cuenca        : chr  "Balsas" "Balsas" "Río Bravo" "Golfo Norte" ...
    ##  $ Entidad.federativa         : chr  "Michoacán" "Guerrero" "Nuevo León" "Tamaulipas" ...
    ##  $ NAME.Elevación..msnm.      : num  1743 122.6 285.5 1.4 115.9 ...
    ##  $ NAME.Almacenamiento..hm..  : num  220.1 34.19 393 854 8.13 ...
    ##  $ NAMO.Elevación..msnm.      : num  1741 118 283 1 111 ...
    ##  $ NAMO.Almacenamiento..hm..  : num  202.4 9.39 300 676 2.5 ...
    ##  $ Elevación.Actual..msnm.    : num  1733.44 118.41 283.86 1.12 110.86 ...
    ##  $ Almacenamiento.Actual..hm..: num  123.43 10.92 340 730 2.55 ...
    ##  $ X..de.llenado.actual       : int  61 116 113 108 102 102 101 101 101 100 ...

``` r
#4. Verificar si tiene datos nulos(NA)
any(is.na(marzo_25))
```

    ## [1] FALSE

``` r
any(is.na(marzo_24))
```

    ## [1] FALSE

``` r
any(is.na(marzo_23))
```

    ## [1] FALSE

``` r
any(is.na(marzo_15))
```

    ## [1] FALSE

``` r
any(is.na(marzo_14))
```

    ## [1] FALSE

``` r
any(is.na(marzo_13))
```

    ## [1] FALSE

``` r
any(is.na(marzo_05))
```

    ## [1] FALSE

``` r
any(is.na(marzo_04))
```

    ## [1] FALSE

``` r
any(is.na(marzo_03))
```

    ## [1] FALSE

``` r
any(is.na(marzo_95))
```

    ## [1] FALSE

``` r
any(is.na(marzo_94))
```

    ## [1] FALSE

``` r
any(is.na(marzo_93))
```

    ## [1] FALSE

# **Semana 3: Análisis y visualizaciones**

Para este análisis se utilizaron 12 conjuntos de datos, correspondientes
a los siguientes años: 1993, 1994, 1995, 2003, 2004, 2005, 2013, 2014,
2015, 2023, 2024 y 2025. Cada archivo representa los datos recopilados
el 1 de marzo de cada año.

Con el objetivo de facilitar la comparación por décadas, los conjuntos
de datos fueron agrupados en cuatro nuevos data frames, cada uno
representando una década distinta.

Para la limpieza y transformación de los datos, se incorporaron columnas
adicionales que identifican el año y la década correspondiente a cada
registro, ya que los archivos originales no incluían esta información.
Luego, los datos se agruparon por década, combinando los registros de
tres años consecutivos en un solo conjunto por década. Posteriormente,
se seleccionaron únicamente las variables necesarias para el análisis,
descartando aquellas que no aportaban valor. Se exploró la estructura
general de los datos para entender su distribución, y se verificó la
existencia de valores nulos, los cuales fueron eliminados en caso de
estar presentes. Además, se transformó a formato numérico la variable
que representa el porcentaje de llenado de las presas. Finalmente, se
calcularon medidas de tendencia central, como el promedio y la mediana
del volumen de agua almacenado.

``` r
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
```

    ##  Nombre.común       Entidad.federativa Almacenamiento.Actual..hm..
    ##  Length:630         Length:630         Min.   :   0.000           
    ##  Class :character   Class :character   1st Qu.:   6.116           
    ##  Mode  :character   Mode  :character   Median :  21.822           
    ##                                        Mean   : 300.086           
    ##                                        3rd Qu.: 130.993           
    ##                                        Max.   :7643.540           
    ##  X..de.llenado.actual     decada          año      
    ##  Min.   :  0.00       Min.   :2020   Min.   :2023  
    ##  1st Qu.: 31.00       1st Qu.:2020   1st Qu.:2023  
    ##  Median : 60.00       Median :2020   Median :2024  
    ##  Mean   : 56.63       Mean   :2020   Mean   :2024  
    ##  3rd Qu.: 82.00       3rd Qu.:2020   3rd Qu.:2025  
    ##  Max.   :116.00       Max.   :2020   Max.   :2025

``` r
summary(decada_2010)
```

    ##  Nombre.común       Entidad.federativa Almacenamiento.Actual..hm..
    ##  Length:585         Length:585         Min.   :    0.000          
    ##  Class :character   Class :character   1st Qu.:    9.488          
    ##  Mode  :character   Mode  :character   Median :   30.391          
    ##                                        Mean   :  451.926          
    ##                                        3rd Qu.:  205.399          
    ##                                        Max.   :13933.100          
    ##  X..de.llenado.actual     decada          año      
    ##  Min.   :  0.00       Min.   :2010   Min.   :2013  
    ##  1st Qu.: 48.00       1st Qu.:2010   1st Qu.:2013  
    ##  Median : 74.00       Median :2010   Median :2014  
    ##  Mean   : 71.63       Mean   :2010   Mean   :2014  
    ##  3rd Qu.: 96.00       3rd Qu.:2010   3rd Qu.:2015  
    ##  Max.   :226.00       Max.   :2010   Max.   :2015

``` r
summary(decada_2000)
```

    ##  Nombre.común       Entidad.federativa Almacenamiento.Actual..hm..
    ##  Length:588         Length:588         Min.   :   0.01            
    ##  Class :character   Class :character   1st Qu.:  10.39            
    ##  Mode  :character   Mode  :character   Median :  34.09            
    ##                                        Mean   : 351.98            
    ##                                        3rd Qu.: 167.40            
    ##                                        Max.   :8764.30            
    ##  X..de.llenado.actual     decada          año      
    ##  Min.   :  0.00       Min.   :2000   Min.   :2003  
    ##  1st Qu.: 55.00       1st Qu.:2000   1st Qu.:2003  
    ##  Median : 84.00       Median :2000   Median :2004  
    ##  Mean   : 79.44       Mean   :2000   Mean   :2004  
    ##  3rd Qu.: 98.00       3rd Qu.:2000   3rd Qu.:2005  
    ##  Max.   :387.00       Max.   :2000   Max.   :2005

``` r
summary(decada_1990)
```

    ##  Nombre.común       Entidad.federativa Almacenamiento.Actual..hm..
    ##  Length:371         Length:371         Min.   :    0.469          
    ##  Class :character   Class :character   1st Qu.:   15.045          
    ##  Mode  :character   Mode  :character   Median :   58.530          
    ##                                        Mean   :  550.228          
    ##                                        3rd Qu.:  338.848          
    ##                                        Max.   :10837.400          
    ##  X..de.llenado.actual     decada          año      
    ##  Min.   :  0.00       Min.   :1990   Min.   :1993  
    ##  1st Qu.: 46.00       1st Qu.:1990   1st Qu.:1993  
    ##  Median : 75.00       Median :1990   Median :1994  
    ##  Mean   : 74.32       Mean   :1990   Mean   :1994  
    ##  3rd Qu.: 94.50       3rd Qu.:1990   3rd Qu.:1995  
    ##  Max.   :413.00       Max.   :1990   Max.   :1995

``` r
# 8. buscar existencia de NA 
any(is.na(decada_2020))
```

    ## [1] FALSE

``` r
any(is.na(decada_2000$X..de.llenado.actual)) 
```

    ## [1] FALSE

``` r
any(is.na(decada_2010))
```

    ## [1] FALSE

``` r
any(is.na(decada_2000))
```

    ## [1] FALSE

``` r
any(is.na(decada_1990))
```

    ## [1] FALSE

``` r
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
```

    ##  num [1:630] 61 116 113 108 102 102 101 101 101 100 ...

``` r
str(decada_2020_sin_na$Almacenamiento.Actual..hm..)
```

    ##  num [1:630] 123.43 10.92 340 730 2.55 ...

``` r
# 9.2 Conoce la esctuctura general de los datos con summary
summary(decada_2020_sin_na)
```

    ##  Nombre.común       Entidad.federativa Almacenamiento.Actual..hm..
    ##  Length:630         Length:630         Min.   :   0.000           
    ##  Class :character   Class :character   1st Qu.:   6.116           
    ##  Mode  :character   Mode  :character   Median :  21.822           
    ##                                        Mean   : 300.086           
    ##                                        3rd Qu.: 130.993           
    ##                                        Max.   :7643.540           
    ##  X..de.llenado.actual     decada          año      
    ##  Min.   :  0.00       Min.   :2020   Min.   :2023  
    ##  1st Qu.: 31.00       1st Qu.:2020   1st Qu.:2023  
    ##  Median : 60.00       Median :2020   Median :2024  
    ##  Mean   : 56.63       Mean   :2020   Mean   :2024  
    ##  3rd Qu.: 82.00       3rd Qu.:2020   3rd Qu.:2025  
    ##  Max.   :116.00       Max.   :2020   Max.   :2025

``` r
summary(decada_2010_sin_na)
```

    ##  Nombre.común       Entidad.federativa Almacenamiento.Actual..hm..
    ##  Length:585         Length:585         Min.   :    0.000          
    ##  Class :character   Class :character   1st Qu.:    9.488          
    ##  Mode  :character   Mode  :character   Median :   30.391          
    ##                                        Mean   :  451.926          
    ##                                        3rd Qu.:  205.399          
    ##                                        Max.   :13933.100          
    ##  X..de.llenado.actual     decada          año      
    ##  Min.   :  0.00       Min.   :2010   Min.   :2013  
    ##  1st Qu.: 48.00       1st Qu.:2010   1st Qu.:2013  
    ##  Median : 74.00       Median :2010   Median :2014  
    ##  Mean   : 71.63       Mean   :2010   Mean   :2014  
    ##  3rd Qu.: 96.00       3rd Qu.:2010   3rd Qu.:2015  
    ##  Max.   :226.00       Max.   :2010   Max.   :2015

``` r
summary(decada_2000_sin_na)
```

    ##  Nombre.común       Entidad.federativa Almacenamiento.Actual..hm..
    ##  Length:588         Length:588         Min.   :   0.01            
    ##  Class :character   Class :character   1st Qu.:  10.39            
    ##  Mode  :character   Mode  :character   Median :  34.09            
    ##                                        Mean   : 351.98            
    ##                                        3rd Qu.: 167.40            
    ##                                        Max.   :8764.30            
    ##  X..de.llenado.actual     decada          año      
    ##  Min.   :  0.00       Min.   :2000   Min.   :2003  
    ##  1st Qu.: 55.00       1st Qu.:2000   1st Qu.:2003  
    ##  Median : 84.00       Median :2000   Median :2004  
    ##  Mean   : 79.44       Mean   :2000   Mean   :2004  
    ##  3rd Qu.: 98.00       3rd Qu.:2000   3rd Qu.:2005  
    ##  Max.   :387.00       Max.   :2000   Max.   :2005

``` r
summary(decada_1990_sin_na)
```

    ##  Nombre.común       Entidad.federativa Almacenamiento.Actual..hm..
    ##  Length:371         Length:371         Min.   :    0.469          
    ##  Class :character   Class :character   1st Qu.:   15.045          
    ##  Mode  :character   Mode  :character   Median :   58.530          
    ##                                        Mean   :  550.228          
    ##                                        3rd Qu.:  338.848          
    ##                                        Max.   :10837.400          
    ##  X..de.llenado.actual     decada          año      
    ##  Min.   :  0.00       Min.   :1990   Min.   :1993  
    ##  1st Qu.: 46.00       1st Qu.:1990   1st Qu.:1993  
    ##  Median : 75.00       Median :1990   Median :1994  
    ##  Mean   : 74.32       Mean   :1990   Mean   :1994  
    ##  3rd Qu.: 94.50       3rd Qu.:1990   3rd Qu.:1995  
    ##  Max.   :413.00       Max.   :1990   Max.   :1995

``` r
#10. Calcular medidas de tendencia central para el almacenamiento actual
#10.1 Promedio
mean(decada_2020_sin_na$Almacenamiento.Actual..hm..)
```

    ## [1] 300.0855

``` r
mean(decada_2010$Almacenamiento.Actual..hm..)
```

    ## [1] 451.9256

``` r
mean(decada_2000$Almacenamiento.Actual..hm..)
```

    ## [1] 351.9813

``` r
mean(decada_1990$Almacenamiento.Actual..hm..)
```

    ## [1] 550.2276

``` r
#10.2 Mediana
median(decada_2020_sin_na$Almacenamiento.Actual..hm..)
```

    ## [1] 21.8215

``` r
median(decada_2010$Almacenamiento.Actual..hm..)
```

    ## [1] 30.391

``` r
median(decada_2000$Almacenamiento.Actual..hm..)
```

    ## [1] 34.089

``` r
median(decada_1990$Almacenamiento.Actual..hm..)
```

    ## [1] 58.53

``` r
#11 Unir todos los datos en un dataframe
df_presas_total <- bind_rows(decada_2020_sin_na, decada_2010_sin_na, decada_2000_sin_na, decada_1990_sin_na)
```

Visualización 1: Grafica de almacenamiento por entidad federativa en las
4 decadas.

``` r
#12. Realizar un grafico facetado por decada de las variables almacenamiento y %
#12.1 Almacenamiento por entidad
ggplot(df_presas_total, aes(x = Entidad.federativa, y= Almacenamiento.Actual..hm..)) +
  geom_bar(stat= "identity", fill = "steelblue", alpha = 0.8)  +
  facet_wrap(~ decada) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size= 4), axis.text.y= element_text(size= 5, )) +
  labs(title = "Distribución de llenado por entidad y década",
       x = "Entidad",
       y = "Almacenamiento en hectometros cubicos (hm³)")
```

![](Informe-Visualizacion-de-datos_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

Visualizacion 2: Almacenamiento total por decada

``` r
#12.2 Almacenamiento total por decada
ggplot(df_presas_total, aes(x = decada, y = Almacenamiento.Actual..hm..)) +
  geom_bar(stat= "identity", fill = "steelblue", alpha = 0.8) +
theme_minimal() +
  labs(title = "Distribución de llenado por década",
       x = "Decada",
       y = "Almacenamiento en hm (hm³)") +
scale_y_continuous(labels = scales::comma_format()) 
```

![](Informe-Visualizacion-de-datos_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

Visualizacion 3. Grafica de Barras Número de presas por entidad

``` r
#13. graficar presas por entidad 1993 y 2025
# Analizar los datos de 1993 y 2025
summary(marzo_93)
```

    ##        X.      Nombre.de.presa    Nombre.común       Organismo.de.cuenca
    ##  Min.   :  1   Length:101         Length:101         Length:101         
    ##  1st Qu.: 26   Class :character   Class :character   Class :character   
    ##  Median : 51   Mode  :character   Mode  :character   Mode  :character   
    ##  Mean   : 51                                                            
    ##  3rd Qu.: 76                                                            
    ##  Max.   :101                                                            
    ##  Entidad.federativa NAME.Elevación..msnm. NAME.Almacenamiento..hm..
    ##  Length:101         Min.   :   7.64       Min.   :    4.20         
    ##  Class :character   1st Qu.: 228.40       1st Qu.:   44.68         
    ##  Mode  :character   Median :1319.10       Median :  222.47         
    ##                     Mean   :1175.01       Mean   : 1331.85         
    ##                     3rd Qu.:1934.61       3rd Qu.:  807.15         
    ##                     Max.   :2607.50       Max.   :19736.40         
    ##  NAMO.Elevación..msnm. NAMO.Almacenamiento..hm.. Elevación.Actual..msnm.
    ##  Min.   :   7.39       Min.   :    3.92          Min.   :   7.32        
    ##  1st Qu.: 226.98       1st Qu.:   35.31          1st Qu.: 225.29        
    ##  Median :1317.00       Median :  170.79          Median :1308.10        
    ##  Mean   :1170.99       Mean   :  933.44          Mean   :1165.21        
    ##  3rd Qu.:1931.00       3rd Qu.:  519.28          3rd Qu.:1921.55        
    ##  Max.   :2605.50       Max.   :13169.60          Max.   :2604.33        
    ##  Almacenamiento.Actual..hm.. X..de.llenado.actual      año           decada    
    ##  Min.   :    1.007           Min.   : 14.00       Min.   :1993   Min.   :1990  
    ##  1st Qu.:   22.708           1st Qu.: 52.00       1st Qu.:1993   1st Qu.:1990  
    ##  Median :  106.200           Median : 80.00       Median :1993   Median :1990  
    ##  Mean   :  672.823           Mean   : 81.99       Mean   :1993   Mean   :1990  
    ##  3rd Qu.:  412.346           3rd Qu.: 97.00       3rd Qu.:1993   3rd Qu.:1990  
    ##  Max.   :10673.600           Max.   :413.00       Max.   :1993   Max.   :1990

``` r
summary(marzo_25)
```

    ##        X.         Nombre.de.presa    Nombre.común       Organismo.de.cuenca
    ##  Min.   :  1.00   Length:210         Length:210         Length:210         
    ##  1st Qu.: 53.25   Class :character   Class :character   Class :character   
    ##  Median :105.50   Mode  :character   Mode  :character   Mode  :character   
    ##  Mean   :105.50                                                            
    ##  3rd Qu.:157.75                                                            
    ##  Max.   :210.00                                                            
    ##  Entidad.federativa NAME.Elevación..msnm. NAME.Almacenamiento..hm..
    ##  Length:210         Min.   :   1.4        Min.   :    1.00         
    ##  Class :character   1st Qu.: 301.2        1st Qu.:   18.52         
    ##  Mode  :character   Median :1583.5        Median :   55.48         
    ##                     Mean   :1268.2        Mean   :  795.03         
    ##                     3rd Qu.:1941.2        3rd Qu.:  389.41         
    ##                     Max.   :2697.8        Max.   :19736.40         
    ##  NAMO.Elevación..msnm. NAMO.Almacenamiento..hm.. Elevación.Actual..msnm.
    ##  Min.   :   1          Min.   :    0.762         Min.   :   0.2         
    ##  1st Qu.: 294          1st Qu.:   14.477         1st Qu.: 290.4         
    ##  Median :1580          Median :   41.168         Median :1578.3         
    ##  Mean   :1265          Mean   :  570.131         Mean   :1258.7         
    ##  3rd Qu.:1940          3rd Qu.:  249.993         3rd Qu.:1938.2         
    ##  Max.   :2697          Max.   :13169.630         Max.   :2694.8         
    ##  Almacenamiento.Actual..hm.. X..de.llenado.actual      año           decada    
    ##  Min.   :   0.000            Min.   :  0.00       Min.   :2025   Min.   :2020  
    ##  1st Qu.:   7.706            1st Qu.: 36.00       1st Qu.:2025   1st Qu.:2020  
    ##  Median :  22.956            Median : 70.00       Median :2025   Median :2020  
    ##  Mean   : 303.430            Mean   : 61.61       Mean   :2025   Mean   :2020  
    ##  3rd Qu.: 122.982            3rd Qu.: 86.75       3rd Qu.:2025   3rd Qu.:2020  
    ##  Max.   :7643.540            Max.   :116.00       Max.   :2025   Max.   :2020

``` r
#crear variable de numero de presas por entidad
presas_por_entidad_93 <- marzo_03 %>%
  count(Entidad.federativa)
presas_por_entidad_25 <- marzo_25 %>%
  count(Entidad.federativa)


ggplot(presas_por_entidad_93, aes(x = Entidad.federativa, y = n )) +
  geom_bar( stat ="identity" , fill= "darkorange", alpha = 0.8) +
  labs(title = "Numero de presas por entidad en 1993", x= "Entidad", y = "Número de presas") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), text)  # Gira etiquetas
```

![](Informe-Visualizacion-de-datos_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

``` r
ggplot(presas_por_entidad_25, aes(x = Entidad.federativa, y = n )) +
  geom_bar( stat ="identity" , fill= "tomato", alpha = 0.8) +
  labs(title = "Numero de presas por entidad en 2025", x= "Entidad", y = "Número de presas") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), text)  # Gira etiquetas
```

![](Informe-Visualizacion-de-datos_files/figure-gfm/unnamed-chunk-7-2.png)<!-- -->

Visualizacion 4: Grafico de barras - Entidades con mayor numero de
presas

``` r
# 14. Encontrar las 5 entidades con mayor numero de presas
entidad_max_presas_93 <- presas_por_entidad_93 %>% arrange(desc(n)) %>% 
  slice(1:10) %>% mutate(año = "1993")

entidad_max_presas_25 <- presas_por_entidad_25 %>% arrange(desc(n)) %>% 
  slice(1:10) %>% mutate(año = "2025")

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
```

![](Informe-Visualizacion-de-datos_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

Visualizacion 5: Mapa de calor Número de presas

``` r
# 15. MAPA DE Presas en Mexico
# Cargar datos geoespaciales
mexico <- ne_states(country = "Mexico", returnclass = "sf")

# Unir con datos de presas por entidad 
mapa_con_datos <- mexico %>%
  left_join(presas_por_entidad_25, by = c("name" = "Entidad.federativa"))

# Crear el mapa simple
ggplot(mapa_con_datos) +
  geom_sf(aes(fill = n), color = "white") +
  scale_fill_gradient(low = "lightyellow", high = "darkgreen", na.value = "gray90") +
  labs(title = "Número de presas por entidad en 2025", fill = "Cantidad") +
  theme_minimal()
```

![](Informe-Visualizacion-de-datos_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

# **Semana 4: Conclusiones y publicación**

**Principales hallazgos** Se observa una gran variación en el volumen de
almacenamiento de agua en las presas de las entidades de México, las
cuales son monitoreadas por Conagua. Chiapas destaca como la entidad con
el mayor volumen de almacenamiento a lo largo de las cuatro décadas
analizadas.

En cuanto al volumen total de almacenamiento, los datos muestran que en
las décadas de 1990 y 2000 se alcanzaron cerca de 210,000 hectómetros
cúbicos. La década de 2010 registró el mayor volumen, superando los
260,000 hm³. Sin embargo, en la década de 2020 se observa una
disminución significativa, sin llegar a los 190,000 hm³.

El número de presas por entidad también varió entre 1993 y 2025,
evidenciando la construcción de 17 nuevas presas en los estados de
Michoacán, Nayarit, Querétaro, Tamaulipas, Zacatecas, Aguascalientes,
Baja California, Chihuahua, Coahuila, Durango, San Luis Potosí y Sonora.

El mapa muestra que algunos estados no cuentan con ninguna presa, en
contraste con entidades como Jalisco y Michoacán, que tienen más de 20
presas cada una.

**Reflexión** Una posible mejora futura sería ampliar el rango de
análisis incluyendo todos los años de cada década, lo que permitiría
identificar posibles patrones o ciclos en los niveles de almacenamiento.
Esto podría ayudar a explicar el aumento observado en la década de 2010.
También sería interesante comparar la capacidad total de almacenamiento
por entidad para determinar cuáles tienen mayor infraestructura hídrica.

Otra alternativa de análisis sería observar el comportamiento del
almacenamiento en diferentes épocas del año, como al inicio del otoño,
para evaluar los niveles posteriores a la temporada de lluvias.

Trabajar con una base de datos de interés personal resultó enriquecedor.
Este ejercicio me permitió aplicar de forma práctica los conocimientos
adquiridos en el módulo de visualización de datos, abordando todas las
etapas del proceso: limpieza, transformación y representación visual.

Enlace al proyecto en GitHub
<https://github.com/angie154g/Ejercicio---Curso-visualizacion---Presas.git>
