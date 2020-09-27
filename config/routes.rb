Rails.application.routes.draw do
  resources :tags
  resources :atividades
  resources :tarefas
  resources :tipo_de_projetos
  resources :clientes
  root 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
