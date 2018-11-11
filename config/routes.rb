Rails.application.routes.draw do
  root 'routines#index'

  resources :routines do
    resources :histories, only: %i(new)
  end
end
