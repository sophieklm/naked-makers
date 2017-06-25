Rails.application.routes.draw do
  get 'home/index'

  root to: 'home#index'

  resources :responses, only: [:new, :create] do
    resources :locations, to: 'locations#create'
    resources :response_languages
  end
  get '*path' => redirect('/')
end
