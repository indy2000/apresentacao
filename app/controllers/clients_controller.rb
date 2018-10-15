class ClientsController < ApplicationController
	def index
		@cliente = Client.new
	end

	def create
		valores = params.require(:client).permit :nome,:capsula, :creme, :sache, :shampoo,:floral,:homeopatia
		$clientes = Client.new valores


		$videos_escolhidos = $clientes.escolhaVideo(valores[:capsula].to_i.to_b?,valores[:creme].to_i.to_b?,valores[:sache].to_i.to_b?,valores[:shampoo].to_i.to_b?,valores[:floral].to_i.to_b?,valores[:homeopatia].to_i.to_b?)
		
		id = $clientes.formatText($videos_escolhidos)

		respond_to do |format|
			format.html {redirect_to :action =>"show"}
			
		end
	end
	def show
		@vetor = []
		$videos_escolhidos.each_key do |key|
			@vetor << key
		end
	end
end
