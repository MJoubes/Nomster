class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :20190412162218_add_image_url_to_images, :image_url, :picture 
  end
end
