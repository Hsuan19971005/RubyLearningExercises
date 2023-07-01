# 14. Longest Common Prefix
# Easy
# Related Topics: String, Trie

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  result = ""
  strs.each.with_index do |str, index|
    if index == 0 
      result = str
      next
    end
    
    result.chars.each.with_index do |e, i|
      if e != str[i]
        result = str.slice(0, i)
        break
      end
    end
  end
  result
end

p longest_common_prefix(["flower","flow","flight"]) # "fl "
p longest_common_prefix(["dog","racecar","car"]) # ""