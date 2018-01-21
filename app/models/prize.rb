class Prize < ApplicationRecord
  has_attached_file :zendesk_logo, styles: { normal: "200x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :zendesk_logo, content_type: /\Aimage\/.*\z/

  def calculate_prize
  end
end
