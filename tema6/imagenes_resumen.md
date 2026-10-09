# Resumen Tema 6: Imágenes como datos

## (a) Dimensiones de las imágenes
- Imagen en escala de grises (degradado): shape (5, 5), es decir 5 filas por 5 columnas, un valor por píxel.
- Imagen RGB de dos mitades: shape (4, 4, 3), es decir 4 de alto, 4 de ancho y 3 canales (R, G, B).

## (b) Colores elegidos y luminosidad
- Mitad izquierda: rojo puro (255, 0, 0), luminosidad = 76.245
- Mitad derecha: verde puro (0, 255, 0), luminosidad = 149.685

## (c) Umbral de binarización
Usé el umbral 113, que es casi el punto medio entre las dos luminosidades
((76.245 + 149.685) / 2 ≈ 113). Así el rojo queda en negro y el verde en blanco,
y se separan bien las dos mitades.
