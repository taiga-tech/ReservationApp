# frozen_string_literal: true

class Stylist < ApplicationRecord
  has_many :reservations

  validates :name, presence: true
  validates :position, presence: true
  # validates :image, presence: {message: "を選択してください"}

  mount_uploader :image, ImagesUploader
end
