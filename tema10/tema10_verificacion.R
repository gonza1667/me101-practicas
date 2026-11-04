## PASO 09
library(tidyverse)

datos <- data.frame(
  horas_estudio = c(2, 4, 5, 3, 6, 8, 7, 1, 9, 5),
  nota_examen   = c(9, 12, 13, 10, 15, 17, 16, 7, 18, 14),
  horas_sueno   = c(8, 7, 6, 7, 6, 5, 6, 8, 5, 7),
  horas_celular = c(6, 5, 3, 5, 3, 2, 4, 7, 2, 4)
)

matriz_corr <- cor(datos)
print(round(matriz_corr, 4))

## PASO 10
corr_larga <- as.data.frame(matriz_corr) %>%
  rownames_to_column("var1") %>%
  pivot_longer(-var1, names_to = "var2", values_to = "correlacion")

print(nrow(corr_larga))                       # debe dar 16
stopifnot(nrow(corr_larga) == ncol(datos)^2)  # variables al cuadrado


## PASO 11
# Mantener el orden original de las variables en los ejes
orden <- colnames(datos)
corr_larga$var1 <- factor(corr_larga$var1, levels = rev(orden))
corr_larga$var2 <- factor(corr_larga$var2, levels = orden)

p <- ggplot(corr_larga, aes(x = var2, y = var1, fill = correlacion)) +
  geom_tile(color = "white") +
  geom_text(aes(label = sprintf("%.2f", correlacion)), size = 4) +
  scale_fill_gradient2(low = "#3B4CC0", mid = "white", high = "#B40426",
                       midpoint = 0, limits = c(-1, 1),
                       name = "Correlación") +
  coord_fixed() +
  labs(title = "Matriz de correlación (ggplot2)", x = NULL, y = NULL) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 30, hjust = 1))

print(p)
ggsave("heatmap_ggplot2.png", plot = p, width = 6, height = 5, dpi = 150)








