class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :music
  validates :artist, :presence => true
end
