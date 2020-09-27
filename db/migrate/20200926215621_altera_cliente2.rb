class AlteraCliente2 < ActiveRecord::Migration[6.0]
  def change
    change_column :clientes, :cnpj, :string
  end
end
