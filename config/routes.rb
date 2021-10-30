Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/patients/new', to: 'patients#new', as: 'new_patient'
  root 'static#home'
  get '/patients', to: 'patients#index', as: 'patients'
  post '/patients', to: 'patients#create'
  get '/patients/:id', to: 'patinets#show', as: 'patient'
  get '/patients/:id/edit', to: 'patients#edit', as: 'edit_patient'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session', to: 'session#destroy'
end
