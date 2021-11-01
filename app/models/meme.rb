class Meme < ApplicationRecord
    has_one_attached :featured_image, dependent: :destroy
    has_many :tags
    
    validates :title, presence: true


    # validates_attachment :image, presence: true, content_type: ["image/jpeg", "image/gif", "image/png"]
end
