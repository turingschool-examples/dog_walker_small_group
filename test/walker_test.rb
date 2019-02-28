require 'minitest/autorun'
require './lib/dog'
require './lib/walker'

class WalkerTest < Minitest::Test

  def test_it_exists
    jeremiah = Walker.new("Jeremiah", 25)
    assert_instance_of Walker, jeremiah
  end

  def test_it_has_a_name
    jeremiah = Walker.new("Jeremiah", 25)
    assert_equal "Jeremiah", jeremiah.name
  end

  def test_it_starts_with_poop_bags
    jeremiah = Walker.new("Jeremiah", 25)
    assert_equal 25, jeremiah.poop_bags
  end

  def test_it_starts_with_no_clients
    jeremiah = Walker.new("Jeremiah", 25)
    assert_equal [], jeremiah.clients
  end

  def test_it_can_accept_and_list_clients
    jeremiah = Walker.new("Jeremiah", 25)
    sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)
    max = Dog.new("Max", 11, "Cocker Spaniel", false)

    jeremiah.accept_client(sodie)
    assert_equal [sodie], jeremiah.clients

    jeremiah.accept_client(max)
    assert_equal [sodie, max], jeremiah.clients
  end

  def test_it_cannot_have_duplicate_clients
    jeremiah = Walker.new("Jeremiah", 25)
    sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)
    max = Dog.new("Max", 11, "Cocker Spaniel", false)

    jeremiah.accept_client(sodie)
    assert_equal [sodie], jeremiah.clients

    jeremiah.accept_client(sodie)
    assert_equal [sodie], jeremiah.clients
  end

  def test_it_can_walk_a_dog
    jeremiah = Walker.new("Jeremiah", 25)
    sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)

    jeremiah.walk_dog(sodie)
    assert_equal 1, sodie.walks
  end

  def test_when_it_walsks_dog_it_uses_poop_bag
    jeremiah = Walker.new("Jeremiah", 25)
    sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)

    assert_equal 25, jeremiah.poop_bags
    jeremiah.walk_dog(sodie)
    assert_equal 24, jeremiah.poop_bags
  end

  def test_it_can_list_all_puppy_clients
    jeremiah = Walker.new("Jeremiah", 25)
    sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)
    max = Dog.new("Max", 11, "Cocker Spaniel", false)
    oscar = Dog.new("Oscar", 1, "Shih-Tzu", true)
    athena = Dog.new("Athena", 1, "German Shepard", false)

    jeremiah.accept_client(sodie)
    jeremiah.accept_client(max)
    jeremiah.accept_client(oscar)
    jeremiah.accept_client(athena)

    assert_equal [oscar, athena], jeremiah.puppy_clients
  end

  def test_it_can_list_all_elderly_clients

  end

  def test_it_can_list_all_client_names

  end

  def test_it_can_list_names_ending_in_y_or_ie

  end

  def test_it_can_check_client_list_for_specific_breed

  end

end
