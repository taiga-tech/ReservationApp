class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.string :image, null: false
      t.timestamps
    end
  end
end
