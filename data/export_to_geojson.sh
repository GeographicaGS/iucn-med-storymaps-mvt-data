

ogr2ogr -f GeoJSON -a_srs EPSG:4326 -dim XY geojson/all_species_count.geojson shp/All_species_count.shp
ogr2ogr -f GeoJSON -a_srs EPSG:4326 -dim XY geojson/endemic_richness.geojson shp/Endemic_richness_count_hex.shp
ogr2ogr -f GeoJSON -a_srs EPSG:4326 -dim XY geojson/threatened_count.geojson shp/Theatened_richness_count.shp