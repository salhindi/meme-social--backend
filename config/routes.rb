Rails.application.routes.draw do
  default_url_options :host => "http://localhost:3000"
  namespace :api do
    namespace :v1 do
      resources :memes do
        resources :tags
      end
    end
  end
end

  
