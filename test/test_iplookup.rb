require 'minitest/autorun'
require 'iplookup'

class LookupTest < Minitest::Test
  def test_empty_initialize
    assert_raises RuntimeError do
      Lookup.new()
    end
  end

  def test_incorrect_initialize
    assert_raises RuntimeError do
      Lookup.new('1.2.a.b')
    end
  end
end
