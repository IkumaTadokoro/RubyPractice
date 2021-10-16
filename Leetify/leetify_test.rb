# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'leetify'

class LeetifyTest < Minitest::Test
  def test_leetify_1
    skip
    assert_equal 'I 4m 4 57ud3n7', Leetify.leetify('I am a student')
  end

  def test_leetify_2
    skip
    assert_equal 'd0 r3 mi f4 50 r4 5i d0', Leetify.leetify('do re mi fa so ra si do')
  end

  def test_leetify_3
    skip
    assert_equal 'D4ir4n70u 5m45h 8r07h3r5', Leetify.leetify('Dairantou smash brothers')
  end
end
