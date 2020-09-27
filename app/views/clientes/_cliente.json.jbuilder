json.extract! cliente, :id, :nome, :telefone, :celular, :email, :cnpj, :endereco, :numero, :bairro, :cep, :cidade, :estado, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
