class AddSenhaToProfessor < ActiveRecord::Migration
  def change
    add_column :professors, :senha, :string
  end
end
