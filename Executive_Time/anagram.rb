#Phase 1
def anagram?(str1, str2) #
  chosen_string = str1.chars.permutation.to_a
  chosen_string.each do |arr|
    string = arr.join('')
    if str2 == string
      return true
    end
  end

  false
end

# p anagram?('elvisd', 'livessdg')

def second_anagram?(str1, str2)
  str1.chars.each do |el|
    idx = str2.index(el)
    return false if idx.nil?
    str2.delete(el)
  end

  true
end

# p second_anagram?('elvis', 'lives')

def third_anagram?(str1, str2)
  alphabet = ('a'..'z').to_a
  result1 = ''
  result2 = ''
  alphabet.each do |letters|
    result1 += str1 if letters.include?(str1)
    result2 += str2 if letters.include?(str2)
  end

  result1 == result2
end

# p third_anagram?('elvis', 'lives')


def fourth_anagram?(str1, str2)
  alphabet = ('a'..'z').to_a
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  alphabet.each do |letters|
    hash1[letters] += 1 if letters.include?(str1)
    hash2[letters] += 1 if letters.include?(str2)
  end

  hash1 == hash2
end

# p fourth_anagram?('elvis', 'lives')


def bonus_anagram?(str1, str2)
  alphabet = ('a'..'z').to_a
  hash = {}
  alphabet.each do |letters|
    hash[letters] += 1 if letters.include?(str1)
    hash[letters] += 1 if letters.include?(str2)
  end

  hash.all? {|k,v| v > 2}
end

p bonus_anagram?('elvis', 'lives')
