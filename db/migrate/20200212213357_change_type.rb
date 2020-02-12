class ChangeType < ActiveRecord::Migration[6.0]
  def change
    change_column :bathrooms, :latitude, :decimal, precision: 14, scale: 12
    change_column :bathrooms, :longitude, :decimal, precision: 15, scale: 12
  end
end
