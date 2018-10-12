class ClientsController < ApplicationController
	def index
		@cliente = Client.new
	end

	def create
		valores = params.require(:client).permit :capsula, :creme, :sache, :shampoo,:floral,:homeopatia
		@@clientes = Client.new valores

		p "chamando a funçao create"
		p @@clientes.escolhaVideo



	end
end
