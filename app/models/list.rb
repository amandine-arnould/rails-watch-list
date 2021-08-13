class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_one_attached :image_url

  validates :name, uniqueness: true, presence: true
  validates :image_url, presence: true
end
