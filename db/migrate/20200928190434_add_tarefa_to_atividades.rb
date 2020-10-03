class AddTarefaToAtividades < ActiveRecord::Migration[6.0]
  def change
    add_reference :atividades, :tarefa, null: false, foreign_key: true
  end
end
