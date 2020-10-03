class RemoveCamposFromProjetos < ActiveRecord::Migration[6.0]
  def change
    remove_column :projetos, :cliente_id, :string
    remove_column :projetos, :tipo, :integer
  end
end
