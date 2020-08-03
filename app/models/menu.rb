class Menu < ApplicationRecord
  has_many :reservations
  has_many :menu_categories
  has_many :categories, through: :menu_categories

  validates :name, :price, presence: true
  validates :category_ids, presence: {message: "を選択してください"}
end
