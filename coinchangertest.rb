require "minitest/autorun"
require_relative "coinchanger.rb"
class My_test < Minitest::Test
	def test1
		assert_equal(1,1)
	end
	def test_penny
		change = 1
		assert_equal({"penny" => 1}, coinage(change))
	end
end