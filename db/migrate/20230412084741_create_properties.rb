class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :owner
      t.string :title
      t.string :state
      t.text :description
      t.string :city
      t.string :address1
      t.string :address2
      t.string :country

      t.timestamps
    end
  end
end
