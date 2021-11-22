class CreateWatchParties < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_parties do |t|
      t.date :date
      t.string :location
      t.integer :id_movie
      t.integer :id_user

      t.timestamps
    end
  end
end
