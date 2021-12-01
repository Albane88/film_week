class AddPicture2ToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :picture_2, :string
  end
end
