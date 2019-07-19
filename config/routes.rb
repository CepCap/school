Rails.application.routes.draw do
  resources :teachers
  resources :students
  resources :parents

  root to: 'teachers#show'
end
