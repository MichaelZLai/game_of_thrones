class AddImgUrlToHouse < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :img_url, :text
  end
end
