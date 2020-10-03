class AddCamposToProjetos < ActiveRecord::Migration[6.0]
  def change
    add_reference :projetos, :tipo_de_projeto, null: false, foreign_key: true
    add_reference :projetos, :cliente, null: false, foreign_key: true
  end
end
