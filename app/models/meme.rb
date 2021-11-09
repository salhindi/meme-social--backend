class Meme < ApplicationRecord
    has_one_attached :featured_image, dependent: :destroy
    has_many :tags
    
    validates :title, presence: true


    # validates_attachment :featured_image, presence: true
end
