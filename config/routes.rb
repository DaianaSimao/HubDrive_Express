Rails.application.routes.draw do
  resources :leasing_cars
  resources :payment_cards
  resources :card_types
  resources :car_models
  resources :leasings
  resources :platforms
  resources :brand_types
  resources :cards
  resources :documents
  resources :addresses
  resources :payment_methods
  resources :rentaltypes
  resources :document_types
  resources :address_types
  resources :type_documents
  resources :type_addresses
  resources :people
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks",
    sessions: "users/sessions"
  }

 root "home#index"
end
