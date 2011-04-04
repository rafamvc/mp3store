class Album < ActiveRecord::Base
  has_and_belongs_to_many :artists
  validates :name, :presence => true
  has_many :musics
end
