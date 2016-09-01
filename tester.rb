#!/usr/bin/env ruby
require 'test/unit'

class T < Test::Unit::TestCase
  
  def test_simple
    assert_equal(10,0xA.to_i)
  end
end
