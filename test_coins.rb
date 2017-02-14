require 'minitest/autorun'
require_relative 'coins.rb'

class TestCoinChanger < Minitest::Test

	def test_class_hash
		results = coin_changer(1)
		assert_equal(Hash, results.class)	
	end

	def test_for_empty_hash
		results = coin_changer(1)
		assert_equal(4, results.length)	
	end

	def test_twenty_five_cents_one_quarter
		results = coin_changer(25)
		assert_equal({quarters: 1, dimes: 0, nickels: 0, pennies: 0}, results)	
	end

	def test_twenty_six_quarter_penny
		results = coin_changer(26)
		assert_equal({quarters: 1, dimes: 0, nickels: 0, pennies: 1}, results)	
	end

	def test_thirty_six_cents
		results = coin_changer(36)
		assert_equal({quarters: 1, dimes: 1, nickels: 0, pennies: 1}, results)	
	end

	def test_fifty_cents
		results = coin_changer(50)
		assert_equal({quarters: 2, dimes: 0, nickels: 0, pennies: 0}, results)	
	end

	def test_three_cents
		results = coin_changer(3)
		assert_equal({quarters: 0, dimes: 0, nickels: 0, pennies: 3}, results)	
	end

	def test_ninety_nine_cents
		results = coin_changer(99)
		assert_equal({quarters: 3, dimes: 2, nickels: 0, pennies: 4}, results)	
	end

	def test_one_hundred_seventeen
		results = coin_changer(117)
		assert_equal({quarters: 4, dimes: 1, nickels: 1, pennies: 2}, results)	
	end

end

class TestStringConversion < Minitest::Test

	def test_fifty_cents_returns_string
		results = coins_to_string(50)
		assert_equal('quarters: 2, dimes: 0, nickels: 0, pennies: 0', results)	
	end

end