Rails.application.routes.draw do
  get '/auth/google_oauth2/callback', to: 'session#authenticate'
  get 'doctors/_form'
  get 'doctors/new'
  get 'doctors/edit'
  get 'doctors/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/patients/new', to: 'patients#new', as: 'new_patient'
  root 'static#home'
  get '/patients', to: 'patients#index', as: 'patients'
  post '/patients', to: 'patients#create'
  get '/patients/:id', to: 'patients#show', as: 'patient'
  get '/patients/:id/edit', to: 'patients#edit', as: 'edit_patient'
  patch '/patients/:id', to: 'patients#update'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session', to: 'session#destroy'
end
