class CreateAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :attendees do |t|
      t.references :user
      t.references :watch_party

      t.timestamps
    end
  end
end
