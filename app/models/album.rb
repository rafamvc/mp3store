class Album < ActiveRecord::Base
  has_and_belongs_to_many :artists
  validates :name, :presence => true
  has_many :musics, :dependent => :destroy, :inverse_of => :album
  
  accepts_nested_attributes_for :musics, :reject_if => lambda { |a| a[:name].blank? && a[:mp3].blank? }
end
