require 'minitest/autorun'
require './lib/dog'

class DogTest < Minitest::Test

  def test_it_exists
    sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)
    assert_instance_of Dog, sodie
  end

  def test_it_has_attributes
    sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)
    assert_equal "Sodie", sodie.name
    assert_equal 9, sodie.age
    assert_equal "Shih-Tzu", sodie.breed
    assert_equal true, sodie.small_breed

    max = Dog.new("Max", 11, "Cocker Spaniel", false)
    p max
    assert_equal "Max", max.name
    assert_equal 11, max.age
    assert_equal "Cocker Spaniel", max.breed
    assert_equal false, max.small_breed
  end

  def test_it_starts_with_no_walks
    sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)
    assert_equal 0, sodie.walks
  end

  def test_small_breeds_yap
    sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)
    assert_equal "Yap!", sodie.bark
  end

  def test_big_breed_roof
    max = Dog.new("Max", 11, "Cocker Spaniel", false)
    assert_equal "ROOF", max.bark
  end

end
