class RemoveTipoDeProjetoIdFromTarefas < ActiveRecord::Migration[6.0]
  def change
    remove_column :tarefas, :tipo_de_projeto_id, :string
  end
end
