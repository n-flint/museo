require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < MiniTest::Test

  def test_it_exists
    attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: 4,
      year: 1954
    }
    photograph = Photograph.new(attributes)

    assert_instance_of Photograph, photograph
  end

  def test_it_has_attributes
    attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: 4,
      year: 1954
    }
    photograph = Photograph.new(attributes)

    assert_equal "1", photograph.attributes[:id]
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photograph.attributes[:name]
    assert_equal 4, photograph.attributes[:artist_id]
    assert_equal 1954, photograph.attributes[:year]
  end

end
