class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.bigint :user_id
      t.bigint :property_id
      t.date :reservation_start_date, null: false
      t.date :reservation_end_date, null: false

      t.index :user_id
      t.index :property_id
      t.timestamps
    end
  end
end
