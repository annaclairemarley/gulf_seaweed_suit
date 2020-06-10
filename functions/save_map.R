


save_map = function( raster = suitable_zoom,
  png_name = sargassum_suitable.png,
                    title = "Sargassum Suitability", color = "purple"){
  
  png(file = paste0("../maps/", png_name), width=600, height=400, res = 100)
  plot(raster, main = title, col = c("white", color), legend = F)
  map('world',fill=T,add=T,col='gray')
  dev.off()
  
}