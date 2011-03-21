class Music < ActiveRecord::Base
  belongs_to :album
  validates :album, :presence => true
  has_attached_file :mp3
end
