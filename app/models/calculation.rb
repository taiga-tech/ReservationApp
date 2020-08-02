class Calculation < ApplicationRecord
  validates :tax, :discount, presence: true
end
