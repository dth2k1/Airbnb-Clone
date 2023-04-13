class AddLongtitudeAndLatitudeToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :longitude, :float
    add_column :properties, :latitude, :float
    add_index :properties, [:longitude, :latitude]
  end
end
