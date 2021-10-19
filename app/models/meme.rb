class Meme < ApplicationRecord
    has_many :tags
    has_attached_file :image
    validates :title, presence: true
end
