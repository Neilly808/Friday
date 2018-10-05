@nutritif = ["Lipides", "Glucides", "Protéines" ]

@menu = ["welsh", "frite", "biere"]

@calwelsh = [38.4 , 18.3 , 36.3 ]

@calfrite = [15, 41, 3.4]

@calbiere = [0, 25, 4]

@calnorm = [ 9, 4, 4]

@welsh = @nutritif.zip(@calwelsh).to_h

@frite = @nutritif.zip(@calfrite).to_h

@biere = @nutritif.zip(@calbiere).to_h

@nutrition = [@welsh, @frite, @biere]

@nutrinorm = @nutritif.zip(@calnorm).to_h

@sakafo = @menu.zip(@nutrition).to_h

@weight_watchers = @welsh.zip(@nutritif).to_h

@result = 0

def kcal(kaly)
	kaly.each {|x,y| y.each{|x,y| @result += @nutrinorm[x] * y}}
		puts @result 
end
kcal(@sakafo)