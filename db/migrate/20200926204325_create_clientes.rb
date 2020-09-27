class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.integer :telefone
      t.integer :celular
      t.string :email
      t.integer :cnpj
      t.string :endereco
      t.integer :numero
      t.string :bairro
      t.integer :cep
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
