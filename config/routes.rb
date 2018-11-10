Rails.application.routes.draw do
  get 'routine_histories/new'
  root 'home#index'
end
