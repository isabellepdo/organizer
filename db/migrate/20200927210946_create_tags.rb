class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :nome
      t.string :obs

      t.timestamps
    end
  end
end
