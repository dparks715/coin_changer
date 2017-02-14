require 'minitest/autorun'
require_relative 'coins.rb'

class TestCoinChanger < Minitest::Test

	def test_class_hash
		results = coin_changer()
		assert_equal(Hash, results.class)	
	end

	def test_for_empty_hash
		results = coin_changer()
		assert_equal(4, results.length)	
	end

	def test_twenty_five_cents_one_quarter
		results = coin_changer(25)
		assert_equal({:quarter => 1}, results)	
	end

end