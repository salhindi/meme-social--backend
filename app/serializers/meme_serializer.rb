class MemeSerializer < ActiveModel::Serializer
    
    
    include Rails.application.routes.url_helpers
    attributes :id, :title, :top_text, :bottom_text, :featured_image
    has_many :tags
    
    def featured_image
      if object.featured_image.attached?
        {
          url: rails_blob_url(object.featured_image)
        }
      end
    end
  
end
    
