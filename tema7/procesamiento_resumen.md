Resumen Tema 7: Procesamiento básico de imágenes con Python



Estudiante: Gonzalo Fredy Puelles Zapata Curso: ME101 · Programación Estadística y Visualización de Datos



(a) Figuras dibujadas y colores



Creé una imagen de 120×120 píxeles con fondo beige (240, 230, 200) y dos figuras:



Un rectángulo rojo (200, 30, 30) en la parte de abajo a la izquierda.

Un círculo azul (30, 80, 200) en la parte de arriba a la derecha.

(b) Comparación de .convert('L') vs. rgb2gray() en el píxel de fondo



Usé el píxel de fondo (5, 5). Con Pillow (.convert('L')) obtuve 230 y con scikit-image (color.rgb2gray() multiplicado por 255) obtuve 229.962. Prácticamente coinciden y la diferencia es solo de redondeo, porque Pillow guarda enteros y scikit-image guarda decimales. Las fórmulas sí usan pesos distintos por canal, y eso se nota más con colores como el rojo.



(c) Umbral de Otsu



El umbral de Otsu fue 0.3057. Después de binarizar, la proporción de píxeles True (por encima del umbral) fue 0.8548, es decir, cerca del 85.5 % de la imagen. Solo el rectángulo rojo quedó por debajo. El círculo azul quedó del lado blanco por muy poco, porque su gris es casi igual al umbral.

