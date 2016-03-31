#!/usr/bin/ruby -w

require 'test/unit'
class TestsWhichFail < Test::Unit::TestCase
  def test_reading
    assert_equal(gets.chomp.to_i,1,"not one")
  end
end
