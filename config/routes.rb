Rails.application.routes.draw do
  resources :games 
  resources :people 
  resources :roles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
