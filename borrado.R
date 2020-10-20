# Prendemos librería

library(tidyverse)

# Importamos el .csv que ya bajamos al escritorio del proyecto MetodoCiPol

muestra <- read_csv("~/Desktop/muestra.csv")

# Separamos coumna "dire" en 3 nuevas columnas ("calle", "localidad" y "provincia")

muestra <- separate(muestra, dire, sep = ",", into = c("calle", "localidad", "provincia"))

# Separamos columna 

muestra <- separate(muestra, calle, sep = "\\d+", into = c("1", "2"), remove = FALSE)
muestra <- separate(muestra, calle, sep = "\\D+", into = c("3", "4"), remove = FALSE)

# Nos quedamos con las columnas que me sirven + ordeno/nombro

muestra <- muestra[c("1","4","localidad","provincia")]
muestra <- muestra %>% rename(calle = 1) %>% rename(número = 2)


 