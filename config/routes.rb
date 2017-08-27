Rails.application.routes.draw do
  resources :facts
  root 'facts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
