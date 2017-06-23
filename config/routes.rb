Rails.application.routes.draw do
  get 'home/index'
  get 'cities/:state', to: 'responses#cities'

  root to: "home#index"

  resources :responses

end
