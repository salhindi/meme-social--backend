class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :image_file_name, :image_content_type, :image_file_size

end
