class ChangingIntegertoFloat < ActiveRecord::Migration[6.0]
  def change

    change_column :bathrooms, :latitude, :float
    change_column :bathrooms, :longitude, :float
    
  end
end
