class Vendor < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :name, presence: true
  validates :body, length: { minimum: 140, maximum: 500 }
  validates :url, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
