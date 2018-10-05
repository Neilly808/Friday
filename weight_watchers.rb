@welsh = ["Lipides", "Glucides", "Protéines" ]

@nutritif = [38.4 , 18.3 , 36.3 ]

@cal = [ 9, 4, 4]


@weight_watchers = @welsh.zip(@nutritif).to_h
@result = 0

def kcal(kaly)
	calorie = @welsh.zip(@cal).to_h
	kaly.each {|x,y| @result += calorie[x] * y}
		puts @result 
end
kcal(@weight_watchers)