# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :reservations
  has_many :menu_categories, dependent: :destroy
  has_many :categories, through: :menu_categories

  validates :name, :price, presence: true
end
