Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#show'
  post 'todos', to: 'pages#create'
  get 'todos/new', to: 'pages#new'
  get 'todos', to: 'pages#show'
end
