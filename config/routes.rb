Rails.application.routes.draw do

  resources :shops, :products, :orders, :lineItems, controller: 'controller'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
