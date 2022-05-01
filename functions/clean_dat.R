# clean a .dat file coming from the Confocal
# and export it to .xyz

file.name <- "confoc_3d.dat"
file.path <- "https://raw.githubusercontent.com/zoometh/rockart/main/www/"
file.data <- read.table(paste0(file.path, file.name), header = FALSE, sep = "")
xyz <- file.data[, c(1, 2, 3)]
colnames(xyz) <- c("X", "Y", "Z")

# write.table(file.data, paste0(my.local.file.path, "confoc_3d.xyz"),
#             sep = " ", row.names = FALSE, col.names = FALSE)