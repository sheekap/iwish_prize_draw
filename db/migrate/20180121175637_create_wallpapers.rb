class CreateWallpapers < ActiveRecord::Migration[5.1]
  def change
    create_table :wallpapers do |t|
      t.string :platform
      t.timestamps
    end
  end
end
