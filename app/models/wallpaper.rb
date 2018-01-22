class Wallpaper < ApplicationRecord
  has_attached_file :image, styles: { thumb: "200x200#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.get_random_wallpaper_id
    ids = Wallpaper.all.pluck(:id)
    ids.sample
  end
end
