# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :menu
  belongs_to :stylist
  # belongs_to :user

  validates :name, :email, :tel, presence: true
  validates :date, :time, :menu_id, :stylist_id, presence: { message: '選択してください' }

  mount_uploader :image, ImagesUploader
end
