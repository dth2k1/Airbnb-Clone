class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.bigint :user_id
      t.bigint :property_id

      t.timestamps
      t.index :user_id
    end
  end
end
