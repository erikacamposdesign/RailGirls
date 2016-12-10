class CreateCadastros < ActiveRecord::Migration[5.0]
  def change
    create_table :cadastros do |t|
    	t.string :nome
		t.string :email
		t.integer :idade
		t.integer :nivel
		t.text :descricao
      t.timestamps
    end
  end
end
