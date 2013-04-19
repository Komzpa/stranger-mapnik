CREATE INDEX planet_osm_polygon_landuse ON planet_osm_polygon USING btree ("landuse") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_natural ON planet_osm_polygon USING btree ("natural") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_waterway ON planet_osm_polygon USING btree ("waterway") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_building ON planet_osm_polygon USING btree ("building") TABLESPACE gis_index;
CREATE INDEX planet_osm_line_highway ON planet_osm_line USING btree ("highway") TABLESPACE gis_index;
CREATE INDEX planet_osm_ways_tags ON planet_osm_ways USING btree ("tags") TABLESPACE gis_index;
CREATE INDEX planet_osm_line_railway ON planet_osm_line USING btree ("railway") TABLESPACE gis_index;
CREATE INDEX planet_osm_line_barrier ON planet_osm_line USING btree ("barrier") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_buildingpart ON planet_osm_polygon USING btree ("building:part") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_amenity ON planet_osm_polygon USING btree ("amenity") TABLESPACE gis_index;
CREATE INDEX planet_osm_line_boundary ON planet_osm_line USING btree ("boundary") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_boundary ON planet_osm_polygon USING btree ("boundary") TABLESPACE gis_index;
CREATE INDEX planet_osm_line_leisure ON planet_osm_line USING btree ("leisure") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_leisure ON planet_osm_polygon USING btree ("leisure") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_addr_street ON planet_osm_polygon USING btree ("addr:street") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_admin_level ON planet_osm_polygon USING btree ("admin_level") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_name_idx ON planet_osm_polygon USING btree ("name") TABLESPACE gis_index;
CREATE INDEX planet_osm_line_name_idx ON planet_osm_line USING btree ("name") TABLESPACE gis_index;
CREATE INDEX planet_osm_polygon_nameru_idx ON planet_osm_polygon USING btree ("name:ru") TABLESPACE gis_index;
CREATE INDEX planet_osm_line_nameru_idx ON planet_osm_line USING btree ("name:ru") TABLESPACE gis_index;

UPDATE planet_osm_polygon SET "natural" = NULL WHERE "natural" = 'wood' AND landuse = 'forest';
UPDATE planet_osm_polygon SET "landuse" = NULL WHERE "natural" = 'wood' AND landuse = 'farmland';

create index planet_osm_polygon_street_idx on planet_osm_polygon USING btree ("addr:street") TABLESPACE gis_index;
create index planet_osm_polygon_housenumber_idx on planet_osm_polygon USING btree ("addr:housenumber") TABLESPACE gis_index;

