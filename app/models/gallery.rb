class Gallery < ApplicationRecord
  validates :image, presence: {message: "を選択しください"}

  mount_uploader :image, ImagesUploader
end
