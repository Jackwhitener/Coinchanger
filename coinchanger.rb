def coinage(change)
	coin = ""
	if change > 4
		coin = "Nickel"
		change = 1
	else
		coin = "Penny"
	end
	{coin => change}
end