class Client < ApplicationRecord

	def escolhaVideo(capsula,creme,sache,shampoo,floral,h)
		videos_escolhidos = {} 
		if capsula == true
			videos_escolhidos['capsula'] = "video1"
		end
		if creme == true
			videos_escolhidos['creme'] = "video2"
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

	

end
