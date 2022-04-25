library(geodiv)
library(knitr)
library(kableExtra)

xyz.mat <- as.matrix(xyz)

sq.var <- sq(xyz.mat)
sa.var <- sa(xyz.mat)
sku.var <- sku(xyz.mat)
ssk.var <- ssk(xyz.mat)

df.var <- data.frame(abbrev = c('Sq', 'Sa', 'Sku', 'Ssk', '...'),
                     descr = c('Root mean square height', 'Average roughness', 'Kurtosis', 'Skewness', '...'),
                     val = c(sq.var, sa.var, sku.var, ssk.var, '...'))
kable(df.var,"html") %>% 
  kable_styling(full_width = FALSE, position = "center", font_size = 12)