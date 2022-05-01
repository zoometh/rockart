library(plotly)
library(dplyr)

url.www <- "https://raw.githubusercontent.com/zoometh/rockart/main/www/"
xyz <- read.csv(paste0(url.www, "/confoc_3d.xyz"), sep = " ", header = F)

axx <- list(
  title = "X \u03BCm"
)
axy <- list(
  title = "Y \u03BCm"
)
axz <- list(
  title = "Z \u03BCm"
)

## surface
surf3d <- plot_ly(x = xyz$V1, y = xyz$V2, z = xyz$V3,
                  intensity = xyz$V3, type = 'mesh3d',
                  colorbar = list(title = "Z \u03BCm"))  %>%
  layout(title = "ConFocal surface",
         scene = list(xaxis = axx, yaxis = axy, zaxis = axz,
                      aspectmode = 'data'))
surf3d

## surface with a user-drawn marker
surf3d_mark <- plot_ly()%>%
  add_trace(type = "scatter3d", mode="markers", 
            x = 1282.68, y = 1246.93, z = -9.86,
            marker = list(size = 10,
                          color = '#FF0000',
                          opacity = .3)
  ) %>%
  add_trace(x = xyz$V1, y = xyz$V2, z = xyz$V3,
            intensity = xyz$V3, type = 'mesh3d',
            colorbar = list(title = "Z \u03BCm")) %>%
  layout(title = "ConFocal surface",
         scene = list(xaxis = axx, yaxis = axy, zaxis = axz,
                      aspectmode = 'data'))
surf3d_mark

## surface with calculated markers
z.max <- xyz[xyz$V3 == max(xyz$V3), ] 
z.min <- xyz[xyz$V3 == min(xyz$V3), ]
z.intervals <- rbind(z.max, z.min)
surf3d_marks <- plot_ly()%>%
  add_trace(type = "scatter3d", mode="markers", 
            x = c(z.intervals$V1), y = c(z.intervals$V2), z = c(z.intervals$V3),
            marker = list(size = 5,
                          color = c('#0000FF', '#00FF00'))
  ) %>%
  add_trace(x = xyz$V1, y = xyz$V2, z = xyz$V3,
            intensity = xyz$V3, type = 'mesh3d',
            colorbar = list(title = "Z \u03BCm")) %>%
  layout(title = "ConFocal surface",
         scene = list(xaxis = axx, yaxis = axy, zaxis = axz,
                      aspectmode = 'data'))
surf3d_marks

## export in HTML
library(htmlwidgets)

saveWidget(as_widget(surf3d), "surf3d.html")
# creates https://zoometh.github.io/rockart/surf3d
saveWidget(as_widget(surf3d_mark), "surf3d_mark.html")
# creates https://zoometh.github.io/rockart/surf3d_mark
saveWidget(as_widget(surf3d_marks), "surf3d_marks.html")
# creates https://zoometh.github.io/rockart/surf3d_marks