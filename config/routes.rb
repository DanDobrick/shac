Rails.application.routes.draw do
  resources :crashes
  resources :reviews
  resources :students
  root to: "application#index"

  get '/students/:id/info', to: 'students#info', as: 'student_info'

  devise_for :users, controllers: { confirmations: 'confirmations', registrations: 'registrations' }
end
