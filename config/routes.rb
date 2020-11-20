Rails.application.routes.draw do
  root 'main#index'

  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }

  resources :users do
    resources :companies, except: %I[index show]
  end
end
