Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :memes
      resources :images
      resources :tags
    end
  end
end

  
