class AlterandoProjeto < ActiveRecord::Migration[6.0]
  def change
    change_column :projetos, :status, :integer, using: 'status::integer'
    change_column :projetos, :cliente_id, :integer, using: 'cliente_id::integer'
    change_column :projetos, :tipo, :integer, using: 'tipo::integer'
  end
end
