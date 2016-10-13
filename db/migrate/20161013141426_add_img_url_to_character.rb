class AddImgUrlToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :img_url, :text
  end
end
