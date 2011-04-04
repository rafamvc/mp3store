class MakeArtistAlbumHabtm < ActiveRecord::Migration
  def self.up
    create_table :albums_artists, :id => false do |t|
      t.integer :artist_id
      t.integer :album_id
    end
  end

  def self.down
    drop_table :albums_artists
  end
end