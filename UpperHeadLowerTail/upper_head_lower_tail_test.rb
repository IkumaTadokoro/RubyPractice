require 'minitest/autorun'
require_relative 'upper_head_lower_tail'

class UpperHeadLowerTailTest < Minitest::Test
  def test_case_1
    # skip
    assert_equal 'DIFFiculty', UpperHeadLowerTail.to_upper_head_lower_tail("difficULty","i")
  end

  def test_case_2
    # skip
    assert_equal 'LIBRAry', UpperHeadLowerTail.to_upper_head_lower_tail("liBrarY","r")
  end

  def test_case_3
    # skip
    assert_equal 'ECONOMICS', UpperHeadLowerTail.to_upper_head_lower_tail("EcoNomIcs","u")
  end

  def test_case_4
    # skip
    assert_equal 'AAAAAAAAa', UpperHeadLowerTail.to_upper_head_lower_tail("AAAAAAAAA","A")
  end

  def test_case_5
    # skip
    assert_equal 'ABABABa', UpperHeadLowerTail.to_upper_head_lower_tail("ABABABA","A")
  end

  def test_case_6
    # skip
    assert_equal 'ABABAba', UpperHeadLowerTail.to_upper_head_lower_tail("ABABABA","B")
  end

  def test_case_7
    # skip
    assert_equal 'a', UpperHeadLowerTail.to_upper_head_lower_tail("A","A")
  end

  def test_case_8
    # skip
    assert_equal 'A', UpperHeadLowerTail.to_upper_head_lower_tail("a", "A")
  end
end
