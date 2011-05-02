require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "first_name can't be blank" do
    artist = Artist.new
    assert !artist.save, "Saved the artist without a name"
  end
  
  test "name must be unique" do
    jason = artists(:jason)
    assert jason.valid?
    artist = Artist.new :first_name => 'Jason'
    assert !artist.valid?, "Saved the artist with a duplicate a name"
    assert_equal artist.errors[:first_name].count, 1
    assert artist.errors[:first_name].include? "has already been taken"
  end
  
  test "first_name must be more than 4 char" do
    jason = artists(:jason)
    assert jason.valid?
    jason.first_name = 'Jas'
    assert !jason.valid?, "Saved the artist with a duplicate a name"
    assert_equal jason.errors[:first_name].count, 1
    assert jason.errors[:first_name].include?("is too short (minimum is 4 characters)"), "Didnt verify the first_name length."
  end
end
