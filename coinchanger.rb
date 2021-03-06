def coinage(change)
	coin = ""
	divisors = [100, 50, 25, 10, 5, 1]
	quotient = 0
	remainder = 0
	dollars = 0
	halfdollars = 0
	quarters = 0
	dimes = 0
	nickels = 0
	pennies = 0
	pocket = {}
	change = change.to_i
	if change < 1
		return {'Pennies' => 0}
	elsif change > 0
		divisors.each do |num|
			quotient, remainder = change.divmod(num)
			if num == 100
				coin = "Dollars"
				dollars += quotient
			elsif num == 50
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
			change = remainder
			if dollars > 0
				pocket.merge!({coin => dollars})
			elsif halfdollars > 0
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
			dollars = 0
			halfdollars = 0
			quarters = 0
			dimes = 0
			nickels = 0
			pennies = 0

		end
		return pocket
	end
end