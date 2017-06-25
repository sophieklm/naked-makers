Rails.application.routes.draw do
  get 'home/index'

  root to: "home#index"

  resources :responses do
    resources :locations, to: 'locations#create'
  end

end
