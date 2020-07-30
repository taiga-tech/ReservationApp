class Info < ApplicationRecord
  # geocoded_by      :address
  # after_validation :geocode
  validates :code, :address, :tel, :weekday, :weekend, :holiday, presence: true
end
