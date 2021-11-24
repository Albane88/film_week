class AddCoordinatesToWatchParties < ActiveRecord::Migration[6.0]
  def change
    add_column :watch_parties, :latitude, :float
    add_column :watch_parties, :longitude, :float
  end
end
