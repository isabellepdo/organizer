Rails.application.routes.draw do
  resources :atividade_da_tarefa_por_projetos
  resources :tarefa_do_projetos
  resources :observacao_do_projetos
  resources :observacoes_do_projetos
  resources :observacos
  resources :projetos
  resources :tags
  resources :atividades
  resources :tarefas
  resources :tipo_de_projetos
  resources :clientes
  root 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
