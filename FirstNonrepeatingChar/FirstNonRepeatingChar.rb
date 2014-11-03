class FirstNonRepeatingChar
  def find_first_repeat_char(string)
    chars = []
    repeated_chars = []
    string.each_char do |c|
      if !repeated_chars.include?(c) && !chars.include?(c)
          chars << c
      elsif chars.include?(c)
        chars.delete(c)
        repeated_chars << (c)
      end
    end
    return chars[0]
  end
end