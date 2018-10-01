Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root :to => 'sessions#new'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :real_estate_companies do
    resources :houses
  end
  
  resources :users
  resources :houses do
    resources :inquiries
  end
  
end
