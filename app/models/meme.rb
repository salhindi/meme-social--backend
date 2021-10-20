class Meme < ApplicationRecord
    has_many_attached :image, dependent: :destroy
    has_many :tags
    
    validates :title, presence: true


    # validates_attachment :image, presence: true, content_type: ["image/jpeg", "image/gif", "image/png"]
end
