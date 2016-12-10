class AdicionadoDataDeDelecao < ActiveRecord::Migration[5.0]
  def change
  	add_column :cadastros, :deletado_em, :string
  end
end
