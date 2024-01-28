Rails.application.routes.draw do
  resources :takedosages
  resources :prescriptions
  resources :medications
  resources :addfunds
  resources :bankaccounts
  resources :patients
  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/test', to: 'application#test'
end
