class Artwork < ApplicationRecord
  # validates :email, presence: true, uniqueness: true
  # validates :name, presence: true, uniqueness: true
  validates :title, uniqueness: { scope: :artist_id,
   message: "Title already exists" }
end
