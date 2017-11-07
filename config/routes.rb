Rails.application.routes.draw do

  resources :voips

  get 'users/new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :providers
  root 'static#home'

  # get 'internet',    to: 'static#internet'
  resources :internets

  get 'phones',    to: 'static#phones'

  get 'polycoms',  to: 'static#polycoms'
  get 'test',      to: 'static#test'
  get 'resellers', to: 'static#resellers'
  get 'thankyou',  to: 'static#thankyou'

end
