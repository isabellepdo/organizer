json.extract! observacao_do_projeto, :id, :projeto_id, :user_id, :mensagem, :created_at, :updated_at
json.url observacao_do_projeto_url(observacao_do_projeto, format: :json)
