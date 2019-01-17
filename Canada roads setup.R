library(sf)

#setwd("data")
#wd <- getwd()

wd <- "D:/Work/Roads/Canada_roads/data/COMB/"


fls <- list.files(path = wd, pattern = "*.shp$")

nms <- list()
for(ii in 1:length(fls)){
  sf.tmp <- st_read(paste0(wd,fls[ii]))
  nms[[ii]] <- names(sf.tmp)
  names(nms)[ii] <- fls[ii]
  
}

saveRDS(nms, file="Can_roads_attribute_names.rds")
