require 'minitest/autorun'
require 'minitest/rg'
# require_relative '../bus'
require_relative '../person'
require_relative '../bus_stop'

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop = BusStop.new('Lothian Road')
    @passenger = Person.new('Stuart', 41)
  end

  def test_name
    assert_equal('Lothian Road', @bus_stop.get_name)
  end

  def test_queue_empty
    assert_equal([], @bus_stop.get_queue)
  end

  def test_add_person
    @bus_stop.add_person(@passenger)
    assert_equal([@passenger], @bus_stop.get_queue)
  end
  

end