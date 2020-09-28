class CreateProjetos < ActiveRecord::Migration[6.0]
  def change
    create_table :projetos do |t|
      t.string :codigo
      t.string :nome
      t.string :descricao
      t.string :status
      t.string :tipo

      t.timestamps
    end
  end
end
