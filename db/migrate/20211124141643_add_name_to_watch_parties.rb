class AddNameToWatchParties < ActiveRecord::Migration[6.0]
  def change
    add_column :watch_parties, :name, :string
  end
end
