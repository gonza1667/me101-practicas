\# Resumen Tema 12 — Datos geoespaciales



\*\*Estudiante:\*\* Gonzalo Fredy Puelles Zapata



\## (a) Coordenadas de lugares reales como diccionario



Definí un diccionario con 4 lugares del Cusco (Plaza de Armas, Sacsayhuaman, Qorikancha, Mercado San Pedro) y sus coordenadas (lat, lon). Verifiqué que todas las latitudes y longitudes salen negativas, coherente con que Cusco está en el hemisferio sur y oeste.



\## (b) Mapa básico con matplotlib



Grafiqué los 4 puntos con `ax.scatter(lons, lats, ...)`, usando longitud en el eje X y latitud en el eje Y — la misma convención (x, y) de GeoJSON, al revés de como se declaró el diccionario (lat, lon). Usé `ax.set\_aspect('equal')` para que las distancias no se vean distorsionadas en pantalla, aunque esto no equivale a una proyección cartográfica real.



\## (c) Función de distancia con Haversine



Escribí `distancia\_haversine(lat1, lon1, lat2, lon2)` reutilizando el mismo patrón de funciones propias del Tema 5. Calculé las distancias desde la Plaza de Armas hacia los otros 3 lugares:



\- Plaza de Armas -> Sacsayhuaman: 1.1116 km

\- Plaza de Armas -> Qorikancha: 0.3803 km

\- Plaza de Armas -> Mercado San Pedro: 0.5116 km



\## (d) Lectura y escritura de GeoJSON



Construí un GeoJSON válido (`FeatureCollection` con `Point`), respetando el orden `\[longitud, latitud]` que exige el estándar, y lo guardé en `lugares\_cusco.geojson`. Al reabrirlo confirmé 4 features y que las coordenadas del primer lugar coinciden con lo esperado.



\## Reflexión (Tarea 4): CRS y formatos



Para esta tarea elegí tres lugares de Cusco distintos a los de clase —Cristo Blanco, Q'enqo y la Plazoleta de San Blas— y repetí con ellos el mismo flujo de los Bloques A al D. Al construir mi propio archivo GeoJSON noté que las coordenadas se escriben como `\[longitud, latitud]` y no al revés, como solemos decirlas en voz alta ("trece sur, setenta y dos oeste"); entendí que si invierto ese orden por error, el código no me muestra ningún aviso, simplemente ubica mal mis puntos en el mapa sin que yo me dé cuenta, lo cual lo hace un error silencioso y fácil de pasar por alto.



También reflexioné sobre el CRS (sistema de referencia de coordenadas): aunque trabajé con latitud y longitud "crudas", en realidad corresponden al sistema WGS84, el que usan por defecto el GPS y el formato GeoJSON, y usar `ax.set\_aspect('equal')` en mi gráfico solo evitó que las distancias se vieran distorsionadas en la pantalla, pero eso no equivale a una proyección cartográfica real, sino a un simple ajuste visual. Con esto entendí que todo el ejercicio fue una introducción informal a lo que se va a formalizar en el Tema 13, cuando usemos geopandas (Python) o sf/ggplot2 (R) para trabajar con geometrías reales, como polígonos de límites distritales, y aplicar reproyecciones de CRS de manera correcta.

