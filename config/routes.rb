Rails.application.routes.draw do
  root 'home#home_page'
  resources :products
  resources :informations
end
