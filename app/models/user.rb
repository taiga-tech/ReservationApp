class User < ApplicationRecord
  validates :name, :email, :tel, presence: true

  mount_uploader :image, ImagesUploader
end
