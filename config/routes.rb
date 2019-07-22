Rails.application.routes.draw do
  resources :teachers
  resources :students
  resources :parents

  get '/signup' => 'teachers#new'
  post '/teachers' => 'teachers#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  root to: 'teachers#index'
end
