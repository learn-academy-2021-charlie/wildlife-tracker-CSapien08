Rails.application.routes.draw do
  get '/animals' => 'animal#index', as: 'animals'
  get '/animals/new' => 'animal#new' , as: 'new_animal'
  get '/animals/:id' => 'animal#show', as: 'animal'
  post '/animals' => 'animal#create'

  root 'animals#index'
end
