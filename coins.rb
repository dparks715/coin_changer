def coin_changer(change)
	# Hash with coins we want returned, default 0, will add to this and return it at the end.
	your_change = {quarters: 0, dimes: 0, nickels: 0, pennies: 0}
	# Hash representing the value of each coin.
	coin_value = {quarter: 25, dime: 10, nickel: 5, penny: 1}

	# First thought is to iterate through coin_value
	# Somehow check how many of each item will fit in my param (change)
	# Then take how many and alter the value of your_change.
	coin_value.each_value
	your_change # Hash to be returned with values altered to represent number of each coin.
end