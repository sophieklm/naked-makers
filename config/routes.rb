Rails.application.routes.draw do
  get 'home/index'
  resources :responses
  root to: "home#index"
end
