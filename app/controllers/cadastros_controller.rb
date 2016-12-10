class CadastrosController < ApplicationController
	def index
		@cadastro = Cadastro.new
	end

	def create
		Cadastro.create(cadastro_params)
	end	

	def cadastro_params
		params.require(:cadastro).permit(:nome, :email, :idade, :nivel, :descricao)
	end	

	def listar
		@cad = Cadastro.all
	end

	def editar
		@cadastro = Cadastro.find(params[:id])
	end	

	def atualizar
		@cadastro = Cadastro.find(params[:id])
		@cadastro.update(cadastro_params)
	end
end
