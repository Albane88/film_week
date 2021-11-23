class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :movie
      t.references :user
      t.text :comment

      t.timestamps
    end
  end
end
