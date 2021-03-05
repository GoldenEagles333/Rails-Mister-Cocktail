Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, except: [:update, :edit] do
    resources :doses, only: [:new, :create, :destroy]
  end
  # get '/cocktails', to: 'cocktails#index', as: :cocktails
  # post '/cocktails', to: 'cocktails#create'
  # get '/cocktails/new', to: 'cocktails#new'
  # get '/cocktails/:id', to: 'cocktails#show'
  # delete '/doses/:id', to: 'doses#destroy'
  # get '/cocktails/:cocktail_id/doses/new', to: 'doses#new'
  # post '/cocktails/:cocktail_id/doses', to: 'doses#create'
end
