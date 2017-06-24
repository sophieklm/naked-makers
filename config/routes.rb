Rails.application.routes.draw do
  get 'home/index'

  root to: "home#index"

  resources :responses do
    resources :locations, to: 'locations#create'
    resources :response_languages
    member do
      patch :create_language_join
      put :create_language_join
    end
  end

end
