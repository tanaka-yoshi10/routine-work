Rails.application.routes.draw do
  root 'home#index'

  resources :routines, only: %i() do
    resources :histories, only: %i(new)
  end
end
