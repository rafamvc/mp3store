class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.text :biography
      t.date :dob
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :artists
  end
end
