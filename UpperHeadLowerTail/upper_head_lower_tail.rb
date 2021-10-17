
class UpperHeadLowerTail
  def self.to_upper_head_lower_tail(word, alphabet)
    alphabet_index = word.reverse.index(alphabet) ? word.size - word.reverse.index(alphabet) - 1 : nil
    alphabet_index ? word[0, alphabet_index].upcase + word[alphabet_index, word.size].downcase : word.upcase
  end
end
