class AddImageFieldToWallpapers < ActiveRecord::Migration[5.1]
  def change
    add_attachment :wallpapers, :image
  end
end
