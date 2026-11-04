# Resumen Tema 10 — Mapas de calor

**Estudiante:** Gonzalo Fredy Puelles Zapata

## (a) Herramienta más rápida

pheatmap me pareció la más rápida: con una sola llamada y display\_numbers = TRUE ya tenía el heatmap con números y agrupamiento, sin reestructurar los datos. seaborn quedó muy cerca. ggplot2 fue la más lenta porque hay que pasar a formato largo y armar la gráfica capa por capa.

## (b) ¿Cambió el orden con el agrupamiento?

El agrupamiento junta horas\_estudio con nota\_examen (0.9910) y horas\_sueno con horas\_celular (0.9586). Como mis variables ya estaban en ese orden, casi no cambió el orden; lo que revela es una estructura de dos bloques con correlación negativa entre ellos.

## (c) Matriz de correlación

||horas\_estudio|nota\_examen|horas\_sueno|horas\_celular|
|-|-|-|-|-|
|horas\_estudio|1.0000|0.9910|-0.9562|-0.9314|
|nota\_examen|0.9910|1.0000|-0.9276|-0.9286|
|horas\_sueno|-0.9562|-0.9276|1.0000|0.9586|
|horas\_celular|-0.9314|-0.9286|0.9586|1.0000|



