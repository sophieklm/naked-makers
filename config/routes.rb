Rails.application.routes.draw do
  get 'home/index'
  get 'home/data', :defaults => { :format => 'json' }

  root to: "home#index"

  resources :responses

end
