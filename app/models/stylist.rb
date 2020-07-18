class Stylist < ApplicationRecord
  validates :name, presence: true

  mount_uploader :image, ImagesUploader
end
