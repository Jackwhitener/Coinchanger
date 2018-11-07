require "minitest/autorun"
require_relative "coinchanger.rb"
class My_test < Minitest::Test
	def test1
		assert_equal(1,1)
	end
	def test_penny
		change = 1
		assert_equal({"Penny" => 1}, coinage(change))
	end
	def test_penny_two
		change = 2
		assert_equal({"Penny" => 2}, coinage(change))
	end
	def test_nickel
		change = 5
		assert_equal({"Nickel" => 1}, coinage(change))
	end
	def test_dime
		change = 10
		assert_equal({"Dime" => 1}, coinage(change))
	end
	def test_fifteen_cents
		change = 15
		assert_equal({"Dime" => 1, "Nickel" => 1}, coinage(change))
	end
end