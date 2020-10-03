class AddPrazoToProjeto < ActiveRecord::Migration[6.0]
  def change
    add_column :projetos, :prazo, :date
  end
end
