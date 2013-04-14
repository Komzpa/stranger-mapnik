CREATE INDEX planet_osm_polygon_landuse
  ON planet_osm_polygon
  USING btree
  (landuse);

CREATE INDEX planet_osm_polygon_natural
  ON planet_osm_polygon
  USING btree
  ("natural");

CREATE INDEX planet_osm_polygon_waterway
  ON planet_osm_polygon
  USING btree
  ("waterway");

CREATE INDEX planet_osm_polygon_building
  ON planet_osm_polygon
  USING btree
  (building);

CREATE INDEX planet_osm_line_highway
  ON planet_osm_line
  USING btree
  ("highway");

CREATE INDEX planet_osm_ways_tags
  ON planet_osm_ways
  USING btree
  ("tags");

CREATE INDEX planet_osm_line_railway
  ON planet_osm_line
  USING btree
  ("railway");

CREATE INDEX planet_osm_polygon_buildingpart
  ON planet_osm_polygon
  USING btree
  ("building:part");

CREATE INDEX planet_osm_polygon_amenity
  ON planet_osm_polygon
  USING btree
  (amenity);

CREATE INDEX planet_osm_line_boundary
  ON planet_osm_line
  USING btree
  ("boundary");

CREATE INDEX planet_osm_polygon_addr_street
  ON planet_osm_polygon
  USING btree
  ("addr:street");

CREATE INDEX planet_osm_polygon_admin_level
  ON planet_osm_polygon
  USING btree
  ("admin_level");

UPDATE planet_osm_polygon
SET "natural" = NULL
WHERE
"natural" = 'wood' AND
landuse = 'forest';

UPDATE planet_osm_polygon
SET "landuse" = NULL
WHERE
"natural" = 'wood' AND
landuse = 'farmland'