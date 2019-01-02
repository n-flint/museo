require 'minitest/autorun'
require 'minitest/pride'
require './lib/artist'

class ArtistTest < MiniTest::Test

  def test_it_exists
    attributes = {
       id: "2",
       name: "Ansel Adams",
       born: "1902",
       died: "1984",
       country: "United States"
    }
    artist = Artist.new(attributes)

    assert_instance_of Artist, artist
  end

  def test_it_hash_attributes
    attributes = {
       id: "2",
       name: "Ansel Adams",
       born: "1902",
       died: "1984",
       country: "United States"
    }
    artist = Artist.new(attributes)

    assert_equal "2", artist.attributes[:id]
    assert_equal "Ansel Adams", artist.attributes[:name]
    assert_equal "1902", artist.attributes[:born]
    assert_equal "1984", artist.attributes[:died]
    assert_equal "United States", artist.attributes[:country]
  end



end
