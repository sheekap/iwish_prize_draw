class Wallpaper < ApplicationRecord
  has_attached_file :image, styles: { thumb: "200x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imaghe, content_type: /\Aimage\/.*\z/
end
