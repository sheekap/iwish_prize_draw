class AddImageColumnsForPrizesAndLogoToPrizes < ActiveRecord::Migration[5.1]
  def change
    add_attachment :prizes, :zendesk_logo
    add_attachment :prizes, :tier_1_prize
    add_attachment :prizes, :tier_2_prize
    add_attachment :prizes, :tier_3_prize
  end
end
