# clean a .dat file coming from the Confocal
# and export it to .xyz

file.name <- "confoc_3d.dat"
file.path <- "c:/Rprojects/rockart/www/"
file.data <- read.table(paste0(file.path, file.name), header = FALSE, sep = "")
file.data <- file.data[, c(1, 2, 3)]
write.table(file.data, paste0(file.path, "confoc_3d.xyz"),
            sep = " ", row.names = FALSE, col.names = FALSE)