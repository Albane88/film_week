class CreateAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :attendees do |t|
      t.integer :id_user
      t.integer :id_watch_party

      t.timestamps
    end
  end
end
