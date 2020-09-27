json.extract! tarefa, :id, :nome, :codigo, :tipo_de_projeto_id, :valor, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)
