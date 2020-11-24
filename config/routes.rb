Rails.application.routes.draw do
  root 'main#index'

  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }

  resources :users do
    resources :companies, except: %I[index show]
  end


  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :companies, only: [:show, :index, :create]
    end
  end


  namespace :api do
    namespace :v1 do
      match :company_cash_update, to: 'users#company_cash_update', as: 'company_cash_update', via: %i(get post)
    end
  end

  get "*path" => redirect("/")
end
