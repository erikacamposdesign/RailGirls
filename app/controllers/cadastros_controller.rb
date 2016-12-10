class CadastrosController < ApplicationController
	def index
		@cadastro = Cadastro.new
	end

	def create
		Cadastro.create(cadastro_params)
	end	

	def cadastro_params
		params.require(:cadastro).permit(:nome, :email, :idade, :nivel, :descricao, :deletado_em)
	end	

	def listar
		@cad = Cadastro.where(deletado_em: nil).order_by(nivel:desc)
	end

	def editar
		@cadastro = Cadastro.find(params[:id])
	end	

	def atualizar
		@cadastro = Cadastro.find(params[:id])
		@cadastro.update(cadastro_params)
	end

	def desativar
		@cadastro = Cadastro.find(params[:id])
		@cadastro.update(deletado_em: Time.zone.now)
		redirect_to listar_path
	end

end
