class RemoveTipoDeTarefaIdFromAtividades < ActiveRecord::Migration[6.0]
  def change
    remove_column :atividades, :tipo_de_tarefa_id, :string
  end
end
