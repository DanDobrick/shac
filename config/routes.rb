Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # devise_for :users, controllers: { confirmations: 'confirmations', registrations: 'registrations' }
  
  resources :crashes
  resources :reviews
  resources :students
  root to: "application#index"

  get '/students/:id/info', to: 'students#info', as: 'student_info'

end
