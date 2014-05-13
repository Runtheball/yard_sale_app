Rails.application.routes.draw do
  resources :yard_sales

  get 'users/new'
  root 'sessions#new'
  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"

  get '/about'    => 'high_voltage/pages#show', id: 'about'
  get '/contact'  => 'high_voltage/pages#show', id: 'contact'
  get '/privacy'  => 'high_voltage/pages#show', id: 'privacy'
  get '/terms'    => 'high_voltage/pages#show', id: 'terms'
  get '/yard_sales' => 'high_voltage/pages#show', id: 'yard_sales'
  get '/home', to: redirect('/yard_sales')

  # root :to => 'high_voltage/pages#show', id: 'sessions#new'


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
