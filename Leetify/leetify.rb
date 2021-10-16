class Leetify
  LEET_TABLE = {
    'a' => 4,
    'A' => 4,
    'b' => 8,
    'B' => 8,
    'e' => 3,
    'E' => 3,
    'l' => 1,
    'L' => 1,
    'o' => 0,
    'O' => 0,
    's' => 5,
    'S' => 5,
    't' => 7,
    'T' => 7,
    'z' => 2,
    'Z' => 2,
  }.freeze

  def self.leetify(original_string)
    original_string.chars.map { |s| LEET_TABLE[s] || s }.join
  end
end
