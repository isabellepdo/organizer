class CreateTipoDeProjetos < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_de_projetos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
