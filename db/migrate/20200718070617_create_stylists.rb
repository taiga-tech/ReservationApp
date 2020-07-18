class CreateStylists < ActiveRecord::Migration[6.0]
  def change
    create_table :stylists do |t|
      t.string :name, null: false
      t.text :comment
      t.string :image
      t.timestamps
    end
  end
end
