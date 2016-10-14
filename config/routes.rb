Rails.application.routes.draw do
  root 'home#home_page'
  get '/product' => 'product#index'
end
