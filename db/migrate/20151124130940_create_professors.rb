class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :matricula
      t.string :nome
      t.string :endereco
      t.string :telefone

      t.timestamps null: false
    end
  end
end
