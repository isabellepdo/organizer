class CreateTarefaDoProjetos < ActiveRecord::Migration[6.0]
  def change
    create_table :tarefa_do_projetos do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :status
      t.text :descricao
      t.date :prazo
      t.string :link_nuvem
      t.references :tarefa, null: false, foreign_key: true
      t.references :projeto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
