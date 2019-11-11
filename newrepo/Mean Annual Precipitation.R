library(raster)
library(ggplot2)
library(viridis)

ext2 = extent(-80, -66, 39, 48)
c3 = crop(clim, ext2)
c3_df = as.data.frame(c3, xy = TRUE)
ggplot() + geom_raster(data = c3_df, aes(x = x, y = y, fill = bio12)) + coord_quickmap() + theme_bw() + scale_fill_gradientn(colours=viridis(99), na.value = "black")
#The Stonehill campus gets slightly more rain compared to New York City.