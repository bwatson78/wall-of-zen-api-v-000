Rails.application.routes.draw do
  resources :image_tags
  resources :tags
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
