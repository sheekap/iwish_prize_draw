class RenamePlatformInWallpapersToDescription < ActiveRecord::Migration[5.1]
  def change
    rename_column :wallpapers, :platform, :description
  end
end
