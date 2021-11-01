class ImageSerializer < ActiveModel::Serializer
    attributes :id, :meme_id
    belongs_to :meme
    
end