class ChangeColumnDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:prizes, :counter, 0)
  end
end
