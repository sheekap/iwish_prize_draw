class DropImageFromPrizes < ActiveRecord::Migration[5.1]
  def change
    remove_column :prizes, :image
  end
end
