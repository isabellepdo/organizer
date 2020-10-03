json.extract! tarefa_do_projeto, :id, :user_id, :status, :descricao, :prazo, :link_nuvem, :tarefa_id, :projeto_id, :created_at, :updated_at
json.url tarefa_do_projeto_url(tarefa_do_projeto, format: :json)
