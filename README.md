# gulf_seaweed_suit

Seaweed suitability map of the Gulf of Mexico.

### Usage

<code>data_processing.Rmd</code> Takes in raw polygon and raster files and reprojects, crops, and masks them to the Gulf of Mexico EEZ. Polygons are rasterized to binary rasters where 1 is where the polygon was and 0 is empty cells.

<code>Suitability.Rmd</code> Ocanographic data is from [Bio-Oracle](https://www.bio-oracle.org). Reclassifies oceanographic rasters to be binary depending on seaweed specific thresholds set at the top of the Rmd. Creates suitability, exclusions, and both suitability and exclusion final maps.

<code>scraping.Rmd</code> Code to scrape [HYCOM](https://www.hycom.org/data/gomu0pt04/expt-50pt1) salinity and SST data.

<code>Suitability_hycom.Rmd</code> SST and salinity data from HYCOM and all other rasters resampled to be same resolution. Reclassifies oceanographic rasters to be binary depending on seaweed specific thresholds set at the top of the Rmd. Creates suitability, exclusions, and both suitability and exclusion final maps.
