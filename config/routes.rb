Rails.application.routes.draw do
  root 'home#index'

  resources :routines, only: %i() do
    resources :routine_histories, only: %i(new)
  end
end
