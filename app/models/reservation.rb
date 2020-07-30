class Reservation < ApplicationRecord
  belongs_to :menu
  belongs_to :stylist
  # belongs_to :user

  validates :name, :email, :tel, :date, :time, presence: true

  mount_uploader :image, ImagesUploader
end
