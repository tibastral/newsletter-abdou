class Newsletter < ActiveRecord::Base
  has_many :parties
  has_many :actus
  belongs_to :party
  has_attached_file :artist_photo
  
  validates_presence_of :name, :on => :create, :message => "can't be blank"
end
