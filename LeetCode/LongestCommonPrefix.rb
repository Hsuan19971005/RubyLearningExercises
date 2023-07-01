# 14. Longest Common Prefix
# Easy
# Related Topics: String, Trie

# @param {String[]} strs
# @return {String}
# def longest_common_prefix(strs)
#   result = ""
#   strs.each.with_index do |str, index|
#     if index == 0 
#       result = str
#       next
#     end
    
#     result.chars.each.with_index do |e, i|
#       if e != str[i]
#         result = str.slice(0, i)
#         break
#       end
#     end
#   end
#   result
# end
def longest_common_prefix(strs)
  strs.sort!
  first_str = strs.first
  last_str = strs.last
  first_str.length.times.with_index do |str, index|
    return first_str.slice(0, index) if first_str[index] != last_str[index]
  end
  first_str
end


p longest_common_prefix(["flower","flow","flight"]) # "fl "
p longest_common_prefix(["dog","racecar","car"]) # ""