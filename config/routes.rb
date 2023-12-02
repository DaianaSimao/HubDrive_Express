Rails.application.routes.draw do
  resources :people
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

 root "home#index"
end
