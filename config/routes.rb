Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '/cocktails', to: 'cocktails#index'
  #get '/cocktails/:id', to: 'cocktails#show'
  #get '/cocktail/new', to: 'cocktail#new'
  #post '/cocktails', to: 'cocktails#create'
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
