class AddContentToWatchParties < ActiveRecord::Migration[6.0]
  def change
    add_column :watch_parties, :content, :text
  end
end
