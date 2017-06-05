#
#  Author: Cayetano Benavent, 2017.
#  cayetano.benavent@geographica.gs
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#


_CRS=4326

declare -a lyrs_arr=(
    "all_species_count"
    "endemic_richness"
    "threatened_count"
    "ipas"
    "coral_infralitoral"
  )

printf "\nExporting %s layers...\n" "${#lyrs_arr[@]}"

for lyr in "${lyrs_arr[@]}"
  do
    printf "\n\tStart export: %s" "$lyr";
    ogr2ogr -f GeoJSON -a_srs EPSG:"$_CRS" -dim XY data/geojson/"$lyr".geojson data/shp/"$lyr".shp
    printf "\n\tFinish export: %s\n" "$lyr";
    printf "\t------\n";
  done