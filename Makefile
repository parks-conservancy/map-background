PGDATABASE?=ggnpc
PGHOST?=geo.local
PGPORT?=5432
PGUSER?=ggnpc

mml: project.mml

setup:
	npm install -g js-yaml

install:
	mkdir -p ${HOME}/Documents/MapBox/project
	ln -s `pwd` ${HOME}/Documents/MapBox/project/GGNPC-basemap

clean:
	rm project.mml
	rm -rf tmp/

distclean:
	rm -rf data/

psql:
	PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql

project.mml: project.yml
	js-yaml --to-json project.yml > project.mml

data: data-cpad data-osm data-osm-coastline \
      data-nhd \
      data-ggnpc-locations data-ggnra-trails data-ggnra-boundary \
      data-ggnra-legislative data-restoration-areas \
      data-pt-parking-areas data-ggnra-parking-areas

data-nhd: data/nhdh1805.7z tmp/.placeholder
	7z -otmp/ -y x data/nhdh1805.7z > /dev/null
	ogr2ogr --config PG_USE_COPY YES \
		    -s_srs EPSG:4326 \
			-t_srs EPSG:900913 \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			tmp/NHDH1805.gdb nhdarea nhdfcode nhdline nhdpoint nhdwaterbody | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	rm -rf tmp/NHDH1805_101v210.gdb
	touch $@

data-osm: data/sf-bay-area.osm.pbf
	osm2pgsql -d ${PGDATABASE} \
		      -U ${PGUSER} \
			  -H ${PGHOST} \
			  -P ${PGPORT} \
			  -c \
			  -C2000 \
			  --number-processes=4 \
			  -s \
			  -S osm2pgsql.style \
			  -j \
			  -G \
			  data/sf-bay-area.osm.pbf
	touch $@

data-osm-coastline: data/sf-bay-area.coastline.zip
	ogr2ogr --config PG_USE_COPY YES \
		-nln coastline \
		-nlt PROMOTE_TO_MULTI \
		-lco GEOMETRY_NAME=geom \
		-lco SRID=900913 \
		-f PGDump /vsistdout/ \
		/vsizip/data/sf-bay-area.coastline.zip/sf-bay-area.shp | \
		PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	touch $@

data-cpad: data/cpad.zip
	ogr2ogr --config PG_USE_COPY YES \
		    -t_srs EPSG:900913 \
			-nln cpad_units \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/cpad.zip/CPAD19_Units.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	ogr2ogr --config PG_USE_COPY YES \
		    -t_srs EPSG:900913 \
			-nln cpad_superunits \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/cpad.zip/CPAD19_SuperUnits.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	ogr2ogr --config PG_USE_COPY YES \
		    -t_srs EPSG:900913 \
			-nln cpad_holdings \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/cpad.zip/CPAD19_Holdings.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	touch $@

data-ggnpc-locations: data/ggnpc_locations.zip
	ogr2ogr --config PG_USE_COPY YES \
		    -t_srs EPSG:900913 \
			-nln locations \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/ggnpc_locations.zip/GGNPC_locations_20130417.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	touch $@

data-ggnra-trails: data/ggnra_trails.zip
	ogr2ogr --config PG_USE_COPY YES \
			-t_srs EPSG:900913 \
			-nln trails \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/ggnra_trails.zip/GGNRA_Trails_20130309.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	touch $@

data-ggnra-boundary: data/ggnra_boundary.zip
	ogr2ogr --config PG_USE_COPY YES \
		    -t_srs EPSG:900913 \
			-nln ggnra_boundary \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/ggnra_boundary.zip/GGNRA_boundary_2012_v2/GGNRA_boundary_2012_v2.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	touch $@

data-ggnra-legislative: data/ggnra_legislative.zip
	ogr2ogr --config PG_USE_COPY YES \
		    -t_srs EPSG:900913 \
			-nln ggnra_legislative \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/ggnra_legislative.zip/GOGA_legislative_2013.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	touch $@

data-restoration-areas: data/restoration_areas.zip
	ogr2ogr --config PG_USE_COPY YES \
		    -t_srs EPSG:900913 \
			-nln restoration_areas \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/restoration_areas.zip/RestorationAreas_20120216.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	touch $@

data-pt-parking-areas: data/pt_parking_areas.zip
	ogr2ogr --config PG_USE_COPY YES \
		    -t_srs EPSG:900913 \
			-nln pt_parking_areas \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/pt_parking_areas.zip/Parking_2010.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	touch $@

data-ggnra-parking-areas: data/ggnra_parking_areas.zip
	ogr2ogr --config PG_USE_COPY YES \
		    -t_srs EPSG:900913 \
			-nln ggnra_parking_areas \
			-nlt PROMOTE_TO_MULTI \
			-lco GEOMETRY_NAME=geom \
			-lco SRID=900913 \
			-f PGDump /vsistdout/ \
			/vsizip/data/ggnra_parking_areas.zip/ggnra_parkingareas.shp | \
			PGDATABASE=${PGDATABASE} PGHOST=${PGHOST} PGPORT=${PGPORT} PGUSER=${PGUSER} psql -q
	touch $@

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
