class AddPrizeMarginLimitsToPrizes < ActiveRecord::Migration[5.1]
  def change
    add_column :prizes, :bottles_limit, :integer, default: 1500
    add_column :prizes, :cameras_limit, :integer, default: 1500
  end
end
