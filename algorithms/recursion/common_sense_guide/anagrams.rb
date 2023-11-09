def anagrams(str)
  return [str] if str.length == 1

  anagrams = []
  str.each_char.with_index do |char, index|
    anagrams(str[0...index] + str[(index + 1)..]).each do |anagram|
      anagrams << char + anagram  
    end
  end
  
  anagrams
end

p anagrams('abc')
p anagrams('abcd')
