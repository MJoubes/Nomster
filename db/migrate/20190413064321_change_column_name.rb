class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :image_url, :picture 
  end
end
