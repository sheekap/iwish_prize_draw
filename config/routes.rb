Rails.application.routes.draw do
  resources :wallpapers
  root 'prizes#show'
  get 'prizes/admin'
  resources :prizes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
