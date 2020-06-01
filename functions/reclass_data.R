#' reclass_data
#' function to create a reclassification matrix from a min and max value and then create a reclassified raster
#' 
#' @param raster the binary raster file created in data_processing.Rmd
#' @param min_thresh the minimum threshold value
#' @param max_thresh max threshold value
#' @param one_thresh TRUE if raster is only min SST or max SST, FALSE if using raster that already has a range in it
#' @param which_thresh MAX if using a maximum raster like max SST MIN if using a min raster
#'
#' @return a reclassified raster of suitable areas from thresholds

reclass_data = function(raster, min_thresh, max_thresh, 
                        one_thresh = FALSE, which_thresh = ""){
  
  # create reclassification matrix
  if (one_thresh == TRUE & which_thresh == "MAX"){ 
    
    # if using a max raster layer
    rcl_matrix <- c(-Inf, max_thresh, 1,
                    max_thresh, Inf, 0)
    
  } else if (one_thresh == TRUE & which_thresh == "MIN"){
    
    # if using a min raster layer
    rcl_matrix <- c(-Inf, min_thresh, 0,
                    min_thresh, Inf, 1)
    
  } else { # if raster has both min and max values
    rcl_matrix <- c(-Inf, min_thresh, 0,
                    min_thresh, max_thresh, 1,
                    max_thresh, Inf, 0)
  }
  
  # reclassify
  rcl_raster <- reclassify(raster, rcl = rcl_matrix)
  
  return(rcl_raster)
}