require "minitest/autorun"
require_relative "coinchanger.rb"
class My_test < Minitest::Test
	def test1
		assert_equal(1,1)
	end
	def test_penny
		change = 1
		assert_equal({"Pennies" => 1}, coinage(change))
	end
	def test_penny_two
		change = 2
		assert_equal({"Pennies" => 2}, coinage(change))
	end
	def test_nickel
		change = 5
		assert_equal({"Nickels" => 1}, coinage(change))
	end
	def test_dime
		change = 10
		assert_equal({"Dimes" => 1}, coinage(change))
	end
	def test_fifteen_cents
		change = 15
		assert_equal({"Dimes" => 1, "Nickels" => 1}, coinage(change))
	end
	def test_ninety_nine
		change = 99
		assert_equal({"Halfdollars"=>1, "Quarters"=>1, "Dimes"=>2, "Pennies"=>4}, coinage(change))
	end
end