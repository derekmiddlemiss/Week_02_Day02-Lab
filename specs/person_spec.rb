require 'minitest/autorun'
require 'minitest/rg'
# require_relative '../bus'
require_relative '../person'

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new('Stuart', 41)
  end

  def test_name
    assert_equal('Stuart', @person.get_name)
  end

  def test_age
    assert_equal(41, @person.get_age)
  end

end