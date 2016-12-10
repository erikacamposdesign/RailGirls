class AlterTableCadastro < ActiveRecord::Migration[5.0]
  def change
  	change_table :cadastros do |t|
  		t.boolean :selecionar
  	end
  end
end
