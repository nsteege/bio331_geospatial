library(raster)
library(ggplot2)
library(viridis)
ibrary(sp)
library(raster) 

clim = getData('worldclim', var='bio', res=5, path='tmp') #Gets Climate Data    
summary(clim)

ext2 = extent(-80, -66, 39, 48) #Sets coordinate points encompassing New England
c3 = crop(clim, ext2) #Crops Climate Data to set coordinates
c3_df = as.data.frame(c3, xy = TRUE) #Creates Data Frame for Climate Data
ggplot() + geom_raster(data = c3_df, aes(x = x, y = y, fill = bio12)) + coord_quickmap() + theme_bw() + scale_fill_gradientn(colours=viridis(99), na.value = "black")

#The Stonehill campus gets slightly more rain compared to New York City.
