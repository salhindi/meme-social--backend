class TagSerializer < ActiveModel::Serializer
    attributes :id, :name, :meme_id
    belongs_to :meme 
    
end