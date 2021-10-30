class Image < ApplicationRecord
    # belongs_to :meme
    has_many_attached :image
    # validates_attachment :image, presence: true, content_type: ["image/jpeg", "image/gif", "image/png"]
end
