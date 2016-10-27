Rails.application.routes.draw do
  resources :crashes
  resources :reviews
  resources :students
  root to: "application#index"

  devise_for :users, controllers: { confirmations: 'confirmations' }
end
