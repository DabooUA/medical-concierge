Rails.application.routes.draw do
  get '/prescriptions/show'
  get '/auth/google_oauth2/callback', to: 'session#authenticate'

  get '/doctors/:id/show', to: 'doctors#show', as: 'show_doctor'
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
