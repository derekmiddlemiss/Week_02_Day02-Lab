require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bus'
require_relative '../person'

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new('A16', 'Colinton')
    @passenger1 = Person.new('Del', 40)
    @passenger2 = Person.new('Graeme', 42)
  end

  def test_route
    assert_equal('A16', @bus.get_route)
  end

  def test_destination
    assert_equal('Colinton', @bus.get_destination)
  end

  def test_drive_method
    assert_equal('Brum, brum', @bus.drive_method)
  end

  def test_passengers
    assert_equal([], @bus.get_passengers)
  end

  def test_passengers_count
    assert_equal(0, @bus.passengers_count)
  end

  def test_passenger_pick_up
    @bus.pick_up(@passenger1)
    assert_equal([@passenger1], @bus.get_passengers)
  end

  def test_passenger_drop_off
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.drop_off(@passenger2)
    assert_equal([@passenger1], @bus.get_passengers)
  end

  def test_empty_passengers
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2) 
    @bus.empty_passengers
    assert_equal([], @bus.get_passengers)
    assert_equal(0, @bus.passengers_count)
  end

end