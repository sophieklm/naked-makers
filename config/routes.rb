Rails.application.routes.draw do
  get 'home/index'
  get 'home/location_language_data', :defaults => { :format => 'json' }

  root to: 'home#index'

  resources :locations, to: 'locations#create'

  resources :responses, only: [:new, :create] do
    resources :response_languages
  end
  get '*path' => redirect('/')
end
