class CreateTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :taxes do |t|
      t.float :tax, null: false
      t.timestamps
    end
  end
end
