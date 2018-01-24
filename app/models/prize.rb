class Prize < ApplicationRecord
  has_attached_file :zendesk_logo, styles: { normal: "50x50#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :zendesk_logo, content_type: /\Aimage\/.*\z/

  has_attached_file :tier_1_prize, styles: { thumb: "400x400>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :tier_1_prize, content_type: /\Aimage\/.*\z/

  has_attached_file :tier_2_prize, styles: { thumb: "400x400>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :tier_2_prize, content_type: /\Aimage\/.*\z/

  has_attached_file :tier_3_prize, styles: { thumb: "400x400>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :tier_3_prize, content_type: /\Aimage\/.*\z/

  def prize_draw(number)
    if number < 300 && self.number_of_bottles > 0
      decrement_bottles
      2
    elsif number < 700 && self.number_of_cameras > 0
      decrement_cameras
      3
    else
      1
    end
  end

  def decrement_cameras
    self.update_attributes(:number_of_cameras => self.number_of_cameras - 1)
  end

  def decrement_bottles
    self.update_attributes(:number_of_bottles => self.number_of_bottles - 1)
  end
end
