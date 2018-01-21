class Prize < ApplicationRecord
  has_attached_file :zendesk_logo, styles: { normal: "50x50#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :zendesk_logo, content_type: /\Aimage\/.*\z/

  has_attached_file :tier_1_prize, styles: { thumb: "400x400>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :tier_1_prize, content_type: /\Aimage\/.*\z/

  has_attached_file :tier_2_prize, styles: { thumb: "400x400>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :tier_2_prize, content_type: /\Aimage\/.*\z/

  has_attached_file :tier_3_prize, styles: { thumb: "400x400>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :tier_3_prize, content_type: /\Aimage\/.*\z/

  def calculate_prize_level
    if self.counter%20 == 0
      2
    elsif self.counter%50 == 0
      3
    else
      1
    end
  end
end
