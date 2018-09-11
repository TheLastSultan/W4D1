class User < ApplicationRecord
  validates :username, presence:true, uniqueness: true
  
  has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork
    
  has_many :shared_artworks,
    through: :artwork_shares,
    class_name: :User
end
