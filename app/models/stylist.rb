class Stylist < ApplicationRecord
  has_many :reservations

  validates :name, :position, presence: true

  mount_uploader :image, ImagesUploader
end
