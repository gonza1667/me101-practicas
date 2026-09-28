# Resumen de limpieza - Tema 4 - Gonzalo Puelles



**a) Filas del dataset original:** 7 estudiantes.



**b) Filas tras la limpieza:** 6 estudiantes.



**c) Valores faltantes y tratamiento:**

- **nota:** faltaba en 1 estudiante (María). Elimine esa fila porque no quise inventar una nota.

- **asistencia_pct:** faltaba en 1 estudiante (Carlos). Lo impute con el promedio de la columna (84.4), calculado despues de eliminar la fila sin nota.



Hice el mismo proceso en Python (pandas) y en R (dplyr/tidyr) y obtuve los mismos resultados.

