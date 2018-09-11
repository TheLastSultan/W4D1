class ArtworkShare < ApplicationRecord
  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User
    
  belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: :Artwork
    
  
end