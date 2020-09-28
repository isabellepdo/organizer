class AddClienteToProjeto < ActiveRecord::Migration[6.0]
  def change
    add_column :projetos, :cliente_id, :string
  end
end
