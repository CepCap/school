Rails.application.routes.draw do
  resources :teachers

  resources :students do
    resources :journals, only: [:index, :show]
  end

  get '/signup' => 'teachers#new'
  post '/teachers' => 'teachers#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  root to: 'students#index'
end
