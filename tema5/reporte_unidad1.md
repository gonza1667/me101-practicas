# Reporte Unidad I - Estadística descriptiva

## (a) Estadísticos principales

| Columna | Media | Desv. std | CV (%) |
|---|---|---|---|
| nota | 14.3333 | 2.3594 | 16.46 |
| asistencia_pct | 84.4 | 8.9129 | 10.56 |

## (b) Nivel de dispersión (según clasificar_dispersion)

- **nota:** dispersión Moderada (CV = 16.46 %). Las notas varían de forma intermedia respecto a su promedio.
- **asistencia_pct:** dispersión Baja (CV = 10.56 %). La asistencia es bastante homogénea entre los estudiantes.

## (c) Diferencias de convención entre librerías

La media, la mediana y la desviación estándar coincidieron entre Python y R.
La varianza no: NumPy dio unos 4.64 (divide entre n) y R dio 5.57 (divide entre n-1).
En skewness y kurtosis tampoco coincidieron: pandas, scipy y e1071 usan fórmulas
distintas (e1071 usa type = 3 por defecto). Aprendí que hay que saber qué convención
usa cada librería antes de comparar resultados.
