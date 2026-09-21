#Paso 11: vector y indexación
notas <- c(11, 14, 20, 8, 16, 13)

primero <- notas[1]
ultimo <- notas[length(notas)]

print(primero)
print(ultimo)

#Paso 12: cálculos sin bucle
promedio <- mean(notas)
maximo <- max(notas)
cantidad_aprobados <- sum(notas >= 10.5)

print(promedio)
print(maximo)
print(cantidad_aprobados)


#Paso 13: tibble
library(tidyverse)

datos <- tibble(
  nombre = c("Gonzalo", "Damaris", "Diego", "Marcela", "Rodrigo", "Zahir"),
  nota = c(18, 14, 20, 8, 16, 13),
  asistencia_pct = c(85, 60, 92, 75, 68, 90)
)

filtrados <- datos |> filter(nota >= 10.5 & asistencia_pct >= 70)
print(filtrados)




