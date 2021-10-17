
class UpperHeadLowerTail
  def self.to_upper_head_lower_tail(word, alphabet)
    reverse_alphabet_index = word.reverse.index(alphabet)
    alphabet_index = reverse_alphabet_index ? word.size - reverse_alphabet_index - 1 : 0
    reverse_alphabet_index ? word[0, alphabet_index].upcase + word[alphabet_index, word.size].downcase : word.upcase
  end
end
