class AddCoverPicToImage < ActiveRecord::Migration
  def change
    add_column :images, :cover_pic, :boolean
  end
end
