Rails.application.routes.draw do
 get "/cadastro" => "cadastros#index"
 post "/cadastro" => "cadastros#create", as: :cadastros
 get "/cadastro/listar" => "cadastros#listar", as: :listar
 get "/cadastro/editar/:id" => "cadastros#editar"
 patch "/cadastro/atualizar/:id" => "cadastros#atualizar", as: :atualizar 
 get "/cadastro/selecionar/:id" => "cadastros#selecionar", as: :selecionar
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
