class CreateObservacaoDoProjetos < ActiveRecord::Migration[6.0]
  def change
    create_table :observacao_do_projetos do |t|
      t.references :projeto, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :mensagem

      t.timestamps
    end
  end
end
