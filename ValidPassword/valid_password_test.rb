# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'valid_password'

class ValidPasswordTest < Minitest::Test
  def test_case_1
    # skip
    refute ValidPassword.valid("Aa 12E4")
  end

  def test_case_2
    # skip
    refute ValidPassword.valid("abe12cd")
  end

  def test_case_3
    # skip
    refute ValidPassword.valid("ABE12CD")
  end

  def test_case_4
    # skip
    refute ValidPassword.valid("AaBbCcD")
  end

  def test_case_5
    # skip
    refute ValidPassword.valid("Aa1")
  end

  def test_case_6
    # skip
    assert ValidPassword.valid("AaBbcC123")
  end
end
