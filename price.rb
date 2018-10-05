
menu = ["welsh","frites","biere"]
prix = [15,4,5]
price = menu.zip(prix).to_h

def meal_price(cost)
	i = 0
	valeur = 0
	while i < cost.length 
		item = cost[i]
		i += 1
		valeur += item.to_f
	end
		puts valeur.to_f.round
end 
meal_price(prix)