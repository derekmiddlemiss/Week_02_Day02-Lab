require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bus'
# require_relative '../person'

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new('A16', 'Colinton')
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

end