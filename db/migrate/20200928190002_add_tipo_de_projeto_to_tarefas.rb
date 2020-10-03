class AddTipoDeProjetoToTarefas < ActiveRecord::Migration[6.0]
  def change
    add_reference :tarefas, :tipo_de_projeto, null: false, foreign_key: true
  end
end
