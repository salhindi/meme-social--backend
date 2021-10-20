Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :memes do
        resources :images, :tags
      end
      resources :tags, :images
    end
  end
end

  
