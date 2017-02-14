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

end