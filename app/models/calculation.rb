# frozen_string_literal: true

class Calculation < ApplicationRecord
  validates :tax, :discount, presence: true
end
