class Info < ApplicationRecord
  validates :code, :address, :tel, :weekday, :weekend, :holiday, presence: true
end
