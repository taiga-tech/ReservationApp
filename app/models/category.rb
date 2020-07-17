class Category < ApplicationRecord
  has_many :menu_categories
  has_many :menus, through: :menu_categories

  validates :name, presence: true, uniqueness: true
end
