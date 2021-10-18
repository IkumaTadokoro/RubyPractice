# frozen_string_literal: true

class ValidPassword
  def self.valid(password)
    password.size > 6 && !include_space?(password) && include_upper_and_lower_case?(password) && include_number?(password)
  end

  private

  def self.include_space?(word) = word.include?(' ')

  def self.include_upper_and_lower_case?(word)
    word.upcase != word && word.downcase != word
  end

  def self.include_number?(word) = (word =~ /[0-9]/) != nil
end
