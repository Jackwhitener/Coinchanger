def coinage(change)
	coin = ""
	if change == 5
		coin = "Nickel"
		change = 1
	elsif change == 10
		coin = "Dime"
		change = 1
	else
		coin = "Penny"
	end
	{coin => change}
end