class Artist < ActiveRecord::Base
  has_many :albums
  validates :first_name,
            :presence => true,
            :length => {:minimum => 4},
            :uniqueness => true
            
  def name
      "#{first_name} #{last_name}"
  end
end
