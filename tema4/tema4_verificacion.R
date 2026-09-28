## PASO 13: Leemos el archivo estudiantes.csv
library(tidyverse)

df <- read_csv("estudiantes.csv")

glimpse(df)              # estructura: filas, columnas, tipos
colSums(is.na(df))       # NA por columna


## Paso 14: Limpieza
df_limpio <- df %>%
  drop_na(nota) %>%
  mutate(asistencia_pct = replace_na(asistencia_pct,
                                     mean(asistencia_pct, na.rm = TRUE)))

# verificar que no queden NA
colSums(is.na(df_limpio))
nrow(df_limpio)          # deberia darnos 6



## Paso 15: Calcular promedio
promedio_por_curso <- df_limpio %>%
  group_by(curso) %>%
  summarise(nota_promedio = mean(nota))

print(promedio_por_curso)

## Paso 16: Guardamos el archivo limpio.
write_csv(df_limpio, "estudiantes_limpio_R.csv")