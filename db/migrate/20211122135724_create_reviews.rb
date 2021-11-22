class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :id_movie
      t.integer :id_user
      t.text :comment

      t.timestamps
    end
  end
end
