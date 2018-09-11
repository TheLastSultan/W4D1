class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true
  validates :title, uniqueness: {scope: :artist_id}
  
  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User
    
  has_many :viewers,
    through: :artwork_shares,
    source: :artist
    
  has_many :artwork_shares,
    foreign_key: :artwork_id,
    source: :artist
  
end