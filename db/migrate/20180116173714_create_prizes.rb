class CreatePrizes < ActiveRecord::Migration[5.1]
  def change
    create_table :prizes do |t|
      t.integer :counter
      t.string :image

      t.timestamps
    end
  end
end
