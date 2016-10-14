Rails.application.routes.draw do
  get '/index' => 'users#index'
  root 'home#home_page'
end
