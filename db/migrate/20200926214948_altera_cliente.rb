class AlteraCliente < ActiveRecord::Migration[6.0]
  def change
    change_column :clientes, :telefone, :string
    change_column :clientes, :celular, :string
  end
end
