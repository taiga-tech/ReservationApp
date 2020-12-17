class CreateCalculations < ActiveRecord::Migration[6.0]
  def change
    create_table :calculations do |t|
      t.float :tax,      null: false
      t.float :discount, null: false
      t.timestamps
    end
  end
end
