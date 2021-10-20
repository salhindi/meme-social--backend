Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :memes do
        resources :images
      resources :memes do
        resources :tags
    end
  end
end

  
