class AddLatitudeAndLongitudeToWits < ActiveRecord::Migration[5.0]
  def change
    add_column :wits, :latitude, :float
    add_column :wits, :longitude, :float
  end
end
