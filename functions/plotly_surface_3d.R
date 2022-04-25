library(plotly)

url.www <- "https://raw.githubusercontent.com/zoometh/rockart/main/www/"
xyz <- read.csv(paste0(url.www, "/confoc_3d.xyz"), sep = " ", header = F)
xyz.df <- do.call(rbind, lapply(split(xyz, xyz$V1),
                                function(d) `names<-`(xyz$V3, xyz$V2)))[,3:1]
colors <- colorRamp(c("blue", "lightblue", "chartreuse3", "yellow", "red"))
axx <- list(
  title = "x"
)
axy <- list(
  title = "y"
)
axz <- list(
  title = "z"
)
plot_ly(x = ~xyz$V1, y = ~xyz$V2, z = ~xyz$V3,
        intensity = ~xyz$V3, type = 'mesh3d',
        colors = colors,
        colorbar = list(title = "z"))  %>%
  layout(title = "ConFocal surface",
         scene = list(xaxis = axx, yaxis = axy, zaxis = axz,
                      aspectmode = 'data'))


