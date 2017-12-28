Rails.application.routes.draw do

  # Homepage
  root 'static#home'

  # Static Pages
  get 'phones',    to: 'static#phones'
  get 'tos',  to: 'static#tos'
  get 'polycoms',  to: 'static#polycoms'
  get 'test',      to: 'static#test'
  get 'thankyou',  to: 'static#thankyou'
  get 'analytics',  to: 'static#analytics'
  get 'admin',  to: 'static#admin'
  get 'mail',  to: 'static#mail'

  # Scaffolds
  resources :voips
  resources :referrers
  resources :providers
  resources :resellers
  resources :internets

  # Login URLS
  get 'users/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # Error Pages
  get 'errors/not_found'
  get 'errors/internal_server_error'
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

end
