def coinage(change)
	coin = ""
	divisors = [50, 25, 10, 5, 1]
	quotient = 0
	remainder = 0
	halfdollars = 0
	quarters = 0
	dimes = 0
	nickels = 0
	pennies = 0
	pocket = {}
	change = change.to_i
	if change == 0
		return "You get NO change, because you tried to use this wrong. Spit on you. Ptoo."
	elsif change > 0
		divisors.each do |num|
			quotient, remainder = change.divmod(num)
			if num == 50
				coin = "Halfdollars"
				halfdollars += quotient
			elsif num == 25
				coin = "Quarters"
				quarters += quotient
			elsif num == 10
				coin = "Dimes"
				quarters += quotient
			elsif num == 5
				coin = "Nickels"
				nickels += quotient
			elsif num == 1
				coin = "Pennies"
				pennies += quotient
			end
			if halfdollars > 0
				pocket.merge!({coin => halfdollars})
			elsif quarters > 0
				pocket.merge!({coin => quarters})
			elsif dimes > 0
				pocket.merge!({coin => dimes})
			elsif nickels > 0
					pocket.merge!({coin => nickels})
			elsif pennies > 0
				pocket.merge!({coin => pennies})
			end
			halfdollars = 0
			quarters = 0
			dimes = 0
			nickels = 0
			pennies = 0
			change = remainder
		end
		return pocket
	end
end