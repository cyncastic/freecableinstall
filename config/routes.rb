Rails.application.routes.draw do

  get 'errors/not_found'
  get 'errors/internal_server_error'
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all


  resources :referrers
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

  get 'tos',  to: 'static#tos'
  get 'polycoms',  to: 'static#polycoms'
  get 'test',      to: 'static#test'
  get 'resellers', to: 'static#resellers'
  get 'thankyou',  to: 'static#thankyou'
  get 'analytics',  to: 'static#analytics'
  get 'admin',  to: 'static#admin'

end
