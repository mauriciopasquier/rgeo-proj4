require "test_helper"
require "common/geometry_collection_tests"

class TestGeometryCollection < Test::Unit::TestCase # :nodoc:
  def create_factory
    RGeo::Geographic.projected_factory(projection_proj4: "+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext +no_defs", projection_srid: 3857)
  end

  include RGeo::Tests::Common::GeometryCollectionTests
end
