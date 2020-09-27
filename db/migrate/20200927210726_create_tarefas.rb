class CreateTarefas < ActiveRecord::Migration[6.0]
  def change
    create_table :tarefas do |t|
      t.string :nome
      t.string :codigo
      t.string :tipo_de_projeto_id
      t.float :valor

      t.timestamps
    end
  end
end
