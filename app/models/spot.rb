class Spot < ActiveRecord::Base
  attr_accessible :name, :phone, :address, :city, :postcode, :photo, :user_id, :description, :votes_count
  mount_uploader :photo, SpotUploader
  
  belongs_to :user
  
  has_many :guides, through: :guide_spots
  has_many :guide_spots
  has_many :votes, as: :voteable
  
  after_save :ping_guides
  
  
  def ping_guides
    guides.each {|guide| guide.touch }
  end

end