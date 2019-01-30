require File.dirname(__FILE__) + '/../test_helper'

class SnpTest < Test::Unit::TestCase
include SnpHelper
  # Replace this with your real tests.
  def test_truth
    assert true
  end
		
	def test_float2sec
		input =70.4
		output="1:10"
		
		actual_result=float2sec input
		assert_equal output, actual_result
	end

end
