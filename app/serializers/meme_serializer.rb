class MemeSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer

  include Rails.application.routes.url_helpers
  attributes :id, :title, :top_text, :bottom_text, :image 

  def image
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
  end
end
