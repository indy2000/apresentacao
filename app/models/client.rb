class Client < ApplicationRecord

	def escolhaVideo(capsula,creme,sache,shampoo,floral,h)
		videos_escolhidos = {} 
		if capsula == true
			videos_escolhidos['capsula'] = "./videos/video_01.mp4"
		end
		if creme == true
			videos_escolhidos['creme'] = "./videos/video_02.mp4"
		end
		if sache == true
			videos_escolhidos['sache'] = "video3"
		end
		if shampoo == true
			videos_escolhidos['shampoo'] = "video4"
		end
		if floral == true
			videos_escolhidos['floral'] = "video5"
		end
		if h == true
			videos_escolhidos['homeopatia'] = "videos6"
		end

		return videos_escolhidos

	end

	def formatText(chave)
		texto = ''
		chave.each do |key,val|
			texto << key.to_s + "&".encode('UTF-8')
		end
		return texto
	end	
	

end


