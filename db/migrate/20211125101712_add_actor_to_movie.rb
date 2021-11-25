class AddActorToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :actor, :string
  end
end
