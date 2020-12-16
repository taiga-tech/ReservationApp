# frozen_string_literal: true

require 'csv'

CSV.foreach('db/csv/table-infos.csv') do |row|
  Info.create!(code: row[1], address: row[2], tel: row[3], weekday: row[4], weekend: row[5], holiday: row[6])
end

CSV.foreach('db/csv/table-calculations.csv') do |row|
  Calculation.create!(tax: row[1], discount: row[2])
end

CSV.foreach('db/csv/table-categories.csv') do |row|
  Category.create!(name: row[1])
end

CSV.foreach('db/csv/table-menus.csv') do |row|
  Menu.create!(name: row[1], price: row[2], comment: row[3])
end

CSV.foreach('db/csv/table-menu_categories.csv') do |row|
  MenuCategory.create!(menu_id: row[1], category_id: row[2])
end

CSV.foreach('db/csv/table-stylists.csv') do |row|
  Stylist.create!(name: row[1], position: row[2], comment: row[3], image: File.open('./public/images/default.jpg'))
end

CSV.foreach('db/csv/table-staffs.csv') do |row|
  Staff.create!(name: row[1], email: row[2], password: row[3], password_confirmation: row[4])
end
