mml: project.mml

setup:
	npm install -g js-yaml

install:
	mkdir -p ${HOME}/Documents/MapBox/project
	ln -s `pwd` ${HOME}/Documents/MapBox/project/GGNPC-basemap

clean:
	rm -rf tmp/

dist:
	rm -rf data/

project.mml: project.yml
	js-yaml --to-json project.yml > project.mml

data: data/cpad.zip data/sf-bay-area.osm.pbf data/sf-bay-area.coastline.zip \
      data/nhdh1805.7z \
      data/ggnpc_locations.zip data/ggnra_trails.zip data/ggnra_boundary.zip \
      data/ggnra_legislative.zip data/restoration_areas.zip \
      data/pt_parking_areas.zip data/ggnra_parking_areas.zip

data-nhd: data/nhdh1805.7z tmp/.placeholder
	7z -otmp/ -y x data/nhdh1805.7z > /dev/null
	ogr2ogr --config PG_USE_COPY YES -s_srs EPSG:4326 -t_srs EPSG:900913 -nlt PROMOTE_TO_MULTI -lco GEOMETRY_NAME=geom -lco SRID=900913 -f PGDump /vsistdout/ tmp/NHDH1805.gdb | psql -d nhd -q
	rm -rf tmp/NHDH1805_101v210.gdb

data/cpad.zip: data/.placeholder
	curl -sL http://maps.gis.ca.gov/Downloads/Data/Government/CPAD19_ALL.zip -o $@

data/sf-bay-area.osm.pbf: data/.placeholder
	curl -sL http://osm-extracted-metros.s3.amazonaws.com/sf-bay-area.osm.pbf -o $@

data/nhdh1805.7z: data/.placeholder
	curl -sL http://nhd.stamen.com.s3.amazonaws.com/SubRegions/FileGDB/HighResolution/NHDH1805_101v210.7z -o $@

data/sf-bay-area.coastline.zip: data/.placeholder
	curl -sL http://osm-extracted-metros.s3.amazonaws.com/sf-bay-area.coastline.zip -o $@

data/ggnpc_locations.zip: data/.placeholder
	curl -sL http://data.stamen.com.s3.amazonaws.com/parks-conservancy/03_GGNPC_locations_20130417.zip -o $@

data/ggnra_trails.zip: data/.placeholder
	curl -sL http://data.stamen.com.s3.amazonaws.com/parks-conservancy/04_GGNRA_Trails_20130309.zip -o $@

data/ggnra_boundary.zip: data/.placeholder
	curl -sL http://data.stamen.com.s3.amazonaws.com/parks-conservancy/05_GGNRA_boundary_2012_v2.zip -o $@

data/ggnra_legislative.zip: data/.placeholder
	curl -sL http://data.stamen.com.s3.amazonaws.com/parks-conservancy/06_GGNRA_legislative_2013.zip -o $@

data/restoration_areas.zip: data/.placeholder
	curl -sL http://data.stamen.com.s3.amazonaws.com/parks-conservancy/07_RestorationAreas_20120216.zip -o $@

data/pt_parking_areas.zip: data/.placeholder
	curl -sL http://data.stamen.com.s3.amazonaws.com/parks-conservancy/08a_PT_parking_areas_2010.zip -o $@

data/ggnra_parking_areas.zip: data/.placeholder
	curl -sL http://data.stamen.com.s3.amazonaws.com/parks-conservancy/08b_GGNRA_parking_areas_20120417.zip -o $@

%/.placeholder:
	mkdir -p ${@D}
	touch $@
