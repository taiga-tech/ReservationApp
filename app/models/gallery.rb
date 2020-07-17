class Gallery < ApplicationRecord
  validates :image, presence: true

  mount_uploader :image, ImagesUploader
end
