Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :courses
  get '/tags/:id', to: 'tags#show'
  get '/tags', to: 'tags#index'
  post '/tags', to: 'tags#create'
end
