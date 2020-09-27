class CreateAtividades < ActiveRecord::Migration[6.0]
  def change
    create_table :atividades do |t|
      t.string :nome
      t.string :tipo_de_tarefa_id

      t.timestamps
    end
  end
end
