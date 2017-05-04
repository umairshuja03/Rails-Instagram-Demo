class Post < ApplicationRecord
validates :user_id, presence: true  

validates :image, presence: true

  has_attached_file :image, default_url: "/images/ :style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
