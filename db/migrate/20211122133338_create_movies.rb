class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :review
      t.text :overview
      t.text :synopsis
      t.float :rating
      t.string :movie_url
      t.references :movie_date

      t.timestamps
    end
  end
end
