class Image < ApplicationRecord
    has_one_attached :image
    # validates_attachment :image, presence: true, content_type: ["image/jpeg", "image/gif", "image/png"]
end
