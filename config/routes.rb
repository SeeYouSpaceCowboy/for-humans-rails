Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#login'

  resources :users
  get '/about', to: 'users#about', as: 'about'
  get '/search', to: 'users#search'
  post '/search', to: 'users#search'

  resources :sessions, only: [:create]
  get '/login', to: 'sessions#login', as: 'login'
  get '/logout', to: 'sessions#logout', as: 'logout'

  resources :posts, only: [:create]

  scope module: 'api' do
    namespace :v1 do
      resources :users
      post 'signup', to: 'users#create', as: 'signup'
    end
  end
end
