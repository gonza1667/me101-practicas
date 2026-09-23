file.exists("../me101-practicas/tema4/estudiantes.csv")

library(tidyverse)

df <- read_csv("../me101-practicas/tema4/estudiantes.csv")
glimpse(df)
colSums(is.na(df))

file.copy("../me101-practicas/tema4/estudiantes.csv", "estudiantes.csv", overwrite = TRUE)


# Bloque D - Paso 9
library(tidyverse)

df <- read_csv("estudiantes.csv")
glimpse(df)
colSums(is.na(df))


# Bloque 10
df_limpio <- df %>%
  drop_na(nota) %>%
  mutate(asistencia_pct = replace_na(asistencia_pct, mean(asistencia_pct, na.rm = TRUE)))

colSums(is.na(df_limpio))   # debe ser 0 en todas las columnas
nrow(df_limpio)             # 6 filas

# Bloque 11
aprobados <- df_limpio %>%
  filter(nota >= 10.5) %>%
  mutate(estado = "Aprobado")

print(select(aprobados, nombre, nota, estado))

promedio_por_curso <- df_limpio %>%
  group_by(curso) %>%
  summarise(promedio_nota = mean(nota))

print(promedio_por_curso)


# Bloque 12
write_csv(df_limpio, "estudiantes_limpio_R.csv")
