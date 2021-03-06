class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :code,    null: false
      t.string :address, null: false
      t.string :tel,     null: false
      t.string :weekday, null: false
      t.string :weekend, null: false
      t.string :holiday, null: false
      t.timestamps
    end
  end
end
