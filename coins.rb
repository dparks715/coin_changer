def coin_changer(change)
	# Hash with coins we want returned, default 0, will add to this and return it at the end.
	your_change = {quarters: 0, dimes: 0, nickels: 0, pennies: 0}
	# Hash representing the value of each coin.
	coin_value = {quarters: 25, dimes: 10, nickels: 5, pennies: 1}
	sum = 0

	# First thought is to iterate through coin_value
	# Somehow check how many of each item will fit in my param (change)
	# Then take how many and alter the value of your_change.
	coin_value.each { |key, value| while sum < change
										your_change[key] += 1
										sum += value
										
									end}

	your_change # Hash to be returned with values altered to represent number of each coin.
end