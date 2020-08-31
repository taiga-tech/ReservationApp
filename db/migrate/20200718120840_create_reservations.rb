class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string     :name,         null: false
      t.string     :email,        null: false
      t.string     :tel,          null: false
      t.string     :date,         null: false
      t.string     :time,         null: false
      t.text       :request
      t.string     :image
      t.references :menu,         foreign_key: true
      t.references :stylist,      foreign_key: true
      # t.references :user,       foreign_key: true
      t.timestamps
    end
  end
end
