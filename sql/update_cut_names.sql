ALTER TABLE planet_osm_line ADD COLUMN cut_name character varying;
UPDATE planet_osm_line SET cut_name = cuter("name") WHERE "highway" IS NOT NULL;

ALTER TABLE planet_osm_polygon ADD COLUMN cut_name character varying;
UPDATE planet_osm_polygon SET cut_name = cuter("name") WHERE "highway" IS NOT NULL;

