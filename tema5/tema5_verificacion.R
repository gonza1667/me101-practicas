library(tidyverse)
library(e1071)

df <- read_csv("estudiantes_limpio_R.csv")

# Paso 12: estadisticos de nota
cat("Media:   ", mean(df$nota, na.rm = TRUE), "\n")
cat("Mediana: ", median(df$nota, na.rm = TRUE), "\n")
cat("sd():    ", sd(df$nota, na.rm = TRUE), "\n")
cat("var():   ", var(df$nota, na.rm = TRUE), "\n")
cat("Q1:      ", quantile(df$nota, 0.25, na.rm = TRUE), "\n")
cat("Q3:      ", quantile(df$nota, 0.75, na.rm = TRUE), "\n")
cat("IQR:     ", IQR(df$nota, na.rm = TRUE), "\n")

# Paso 13: skewness y kurtosis (e1071, type = 3 por defecto)
cat("Skewness e1071:", skewness(df$nota, na.rm = TRUE), "\n")
cat("Kurtosis e1071:", kurtosis(df$nota, na.rm = TRUE), "\n")

# Paso 14: resumen_estadistico
resumen_estadistico <- function(vector, decimales = 4) {
  vector   <- vector[!is.na(vector)]
  n        <- length(vector)
  media    <- mean(vector)
  mediana  <- median(vector)
  desv_std <- sd(vector)
  cv_pct   <- desv_std / media * 100
  list(
    n        = n,
    media    = round(media, decimales),
    mediana  = round(mediana, decimales),
    desv_std = round(desv_std, decimales),
    cv_pct   = round(cv_pct, decimales)
  )
}
print(resumen_estadistico(df$nota))

# Paso 15: clasificar_dispersion + bucle
clasificar_dispersion <- function(cv_pct) {
  if (cv_pct < 15) {
    "Baja"
  } else if (cv_pct < 30) {
    "Moderada"
  } else {
    "Alta"
  }
}

for (columna in c("nota", "asistencia_pct")) {
  res   <- resumen_estadistico(df[[columna]])
  nivel <- clasificar_dispersion(res$cv_pct)
  cat("---", columna, "---\n")
  cat("  n:          ", res$n, "\n")
  cat("  Media:      ", res$media, "\n")
  cat("  Mediana:    ", res$mediana, "\n")
  cat("  Desv. std:  ", res$desv_std, "\n")
  cat("  CV (%):     ", res$cv_pct, "\n")
  cat("  Dispersion: ", nivel, "\n\n")
}