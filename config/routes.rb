Rails.application.routes.draw do

  root 'static#home'

  get 'internet',    to: 'static#internet'
  post 'internet',  to: 'static#internet'

  get 'phones',     to: 'static#phones'
  post 'phones',    to: 'static#phones'

  get 'polycoms',  to: 'static#polycoms'
  get 'test',      to: 'static#test'
  get 'resellers',    to: 'static#resellers'
  get 'thankyou',    to: 'static#thankyou'

end
