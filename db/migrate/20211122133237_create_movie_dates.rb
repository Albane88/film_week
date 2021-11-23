class CreateMovieDates < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_dates do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
