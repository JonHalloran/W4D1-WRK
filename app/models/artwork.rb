class Artwork < ApplicationRecord

  validates :title, uniqueness: {
             scope: :artist_id,
             message: "Be more creative with title"
  }, presence: true
  validates :artist_id, presence: true
  validates :image_url, presence: true


  belongs_to :artist,
             foreign_key: :artist_id,
             class_name: :User
end
