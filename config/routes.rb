Rails.application.routes.draw do

  root :to => 'static#home'

  get 'cable'     => 'static#cable'
  get 'phones'    => 'static#phones'
  get 'polycoms'  => 'static#polycoms'
  get 'test'      => 'static#test'
  get 'styles'    => 'static#styles'

end
