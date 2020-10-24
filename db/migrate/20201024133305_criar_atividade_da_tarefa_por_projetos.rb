class CriarAtividadeDaTarefaPorProjetos < ActiveRecord::Migration[6.0]
  def change
    create_table :atividade_da_tarefa_por_projetos do |t|
      t.references :tarefa_do_projeto, null: false, foreign_key: true
      t.string :nome
      t.integer :status
      t.date :prazo

      t.timestamps
    end
  end
end
