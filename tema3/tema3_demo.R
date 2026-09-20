# --- Paso 8: ---
notas <- c(14, 16, 12, 18, 9)
notas[1]                 # 14 -- primer elemento (índice 1, no 0)
notas[length(notas)]     # 9 -- último elemento
notas <- c(notas, 20)    # los vectores también pueden extenderse
print(notas)

# --- Paso 9: matriz ---
evaluaciones <- matrix(c(14, 12, 18, 16, 10, 19), nrow = 3, ncol = 2)
print(evaluaciones)
evaluaciones[2, 1]       # 12 -- fila 2, columna 1 (base 1)
rowMeans(evaluaciones)   # promedio por fila


# --- Paso 10: data.frame y tibble ---
library(tidyverse)

datos <- data.frame(
  nombre = c("Ana", "Luis", "Marco", "Rosa", "Ivan"),
  nota   = c(16, 12, 18, 9, 14),
  ciclo  = c(3, 5, 3, 1, 2)
)

datos_tbl <- as_tibble(datos)
print(datos_tbl)

mean(datos$nota)                 # 13.8
filter(datos_tbl, nota >= 10.5)  # filas aprobadas, estilo dplyr
