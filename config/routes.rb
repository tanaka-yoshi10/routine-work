Rails.application.routes.draw do
  root 'home#index'

  resources :routines do
    resources :histories, only: %i(new)
  end
end
