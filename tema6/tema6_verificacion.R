# PASO: 15
# R llena las matrices por columnas, así que cada valor se repite 5 veces seguidas
gris <- matrix(rep(seq(0, 255, length.out = 5), each = 5), nrow = 5, ncol = 5)

print(gris)
print(dim(gris))
print(mean(gris))


# PASO: 16
# ---- Imagen RGB 4x4 de dos mitades ----
rgb <- array(0, dim = c(4, 4, 3))

rgb[, 1:2, 1] <- 255   # mitad izquierda: canal R = 255 (rojo)
rgb[, 3:4, 2] <- 255   # mitad derecha:  canal G = 255 (verde)

print(dim(rgb))
print(rgb[1, 1, ])   # píxel extremo izquierdo
print(rgb[1, 4, ])   # píxel extremo derecho


# PASO: 18
# ---- Luminosidad ponderada ----
gris_luminosidad <- 0.299 * rgb[, , 1] + 0.587 * rgb[, , 2] + 0.114 * rgb[, , 3]

print(gris_luminosidad)


# ---- Visualización (equivalente a imshow de Python) ----
par(mfrow = c(1, 3))

# 1. Imagen RGB original: as.raster necesita valores entre 0 y 1
plot(as.raster(rgb / 255))
title("RGB original")

# 2. Luminosidad en gris
image(t(gris_luminosidad[4:1, ]), col = gray(0:255 / 255), zlim = c(0, 255),
      axes = FALSE, asp = 1, main = "Gris: luminosidad")

# 3. Binaria (umbral 113, el mismo que en Python)
umbral <- 113
binaria <- ifelse(gris_luminosidad > umbral, 255, 0)
image(t(binaria[4:1, ]), col = gray(0:255 / 255), zlim = c(0, 255),
      axes = FALSE, asp = 1, main = paste("Binaria (umbral", umbral, ")"))

par(mfrow = c(1, 1))
