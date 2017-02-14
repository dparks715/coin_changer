require 'minitest/autorun'
require_relative 'coins.rb'

class TestCoinChanger < Minitest::Test

	def test_class_hash
		results = coin_changer()
		assert_equal(Hash, results.class)	
	end

	def test_for_empty_hash
		results = coin_changer()
		assert_equal({}, results)	
	end

end