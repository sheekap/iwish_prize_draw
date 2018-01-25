class AddNumbersOfPrizesToPrizes < ActiveRecord::Migration[5.1]
  def change
    add_column :prizes, :number_of_cameras, :integer
    add_column :prizes, :number_of_bottles, :integer
  end
end
