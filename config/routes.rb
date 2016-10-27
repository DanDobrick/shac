Rails.application.routes.draw do
  resources :students
  devise_for :users
  root to: "application#index"

  devise_for :users, controllers: { confirmations: 'confirmations' }
end
