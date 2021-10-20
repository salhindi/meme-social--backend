class Image < ApplicationRecord
    belongs_to :meme
    # validates_attachment :image, presence: true, content_type: ["image/jpeg", "image/gif", "image/png"]
end
