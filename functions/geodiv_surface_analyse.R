library(geodiv)
library(dplyr)

# xyz <- read.table("confoc_3d.xyz", header = FALSE, sep = "")
xyz.mat <- as.matrix(xyz)

sq.var <- sq(xyz.mat)
sa.var <- sa(xyz.mat)
sku.var <- sku(xyz.mat)
ssk.var <- ssk(xyz.mat)

df.var <- data.frame(abbrev = c('Sq', 'Sa', 'Sku', 'Ssk'),
                     descr = c('Root mean square height', 'Average roughness', 'Kurtosis', 'Skewness'),
                     val = c(sq.var, sa.var, sku.var, ssk.var))
df.var
# abbrev                   descr         val
# 1     Sq Root mean square height 774.3146686
# 2     Sa       Average roughness 677.9315813
# 3    Sku                Kurtosis  -0.8874419
# 4    Ssk                Skewness   0.6288069