class TagSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :meme_id
end
