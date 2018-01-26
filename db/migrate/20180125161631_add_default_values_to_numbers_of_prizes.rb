class AddDefaultValuesToNumbersOfPrizes < ActiveRecord::Migration[5.1]
  def change
    change_column_default :prizes, :number_of_bottles, 0
    change_column_default :prizes, :number_of_cameras, 0
  end
end
