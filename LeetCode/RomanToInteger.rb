# 13. Roman to Integer
# Easy
# Related Topics: Hash Table, Math, String

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  total = 0
  i = 0
  while i < s.length
    if i + 1 < s.length && hash[s[i]]  < hash[s[i+1]]
      total += (hash[s[i+1]] - hash[s[i]])
      i += 2
    else
      total += hash[s[i]]
      i += 1
    end
  end
  total
end

p roman_to_int("III") # 3
p roman_to_int("LVIII") # 58
p roman_to_int("MCMXCIV") # 1994