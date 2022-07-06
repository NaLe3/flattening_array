require "minitest/autorun" #load minitest v 5.16.2
require_relative "flattening_array.rb"


class FlatteningArrayTest < Minitest::Test

  #Testing when the input is not an array
  def test_with_no_array
    flatten_method = FlatteningArray.flatten("I am a string")
    assert_equal "The input is not an array", flatten_method
  end

  #Testing a simple array with a 1 dimensional array
  def test_with_1_dimensional_array
    flatten_method = FlatteningArray.flatten([1, 2, 3, 4, 5, 6])
    assert_equal [1, 2, 3, 4, 5, 6], flatten_method
  end
  
  #Testing a simple array with a 2 dimensional array
  def test_with_2_dimensional_array
    flatten_method = FlatteningArray.flatten([1, [2, 3, 4, 5], 6])
    assert_equal [1, 2, 3, 4, 5, 6], flatten_method
  end

  #Testing an array with 3 dimensional array
  def test_with_3_dimensional_array
    flatten_method = FlatteningArray.flatten([[1, 2], [[3, 4], 5], 6])
    assert_equal [1, 2, 3, 4, 5, 6], flatten_method
  end

  def test_array_including_a_string
    flatten_method = FlatteningArray.flatten([[1, "2"], [["3", 4], 5], 6])
    assert_equal [1, "2", "3", 4, 5, 6], flatten_method
  end

  def test_array_including_a_hash
    flatten_method = FlatteningArray.flatten([1, 2, {3 => 4, 5 => 6}])
    assert_equal "The input is not an array", flatten_method
  end

end