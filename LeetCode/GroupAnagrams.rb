# 49. Group Anagrams
# Medium
# Related Topics: Array, Hash Table, String, Sorting

# @param {String[]} strs
# @return {String[][]}
# def group_anagrams(strs)
#   hash = {}
#   strs.each do |str|
#     sorted_str = str.split("").sort.join
#     if hash[sorted_str] == nil
#       hash[sorted_str] = [str]
#     else
#       hash[sorted_str] << str
#     end
#   end
#   hash.values
# end
def group_anagrams(strs)
  strs.group_by{|str| str.chars.sort.join}.values
end

p group_anagrams(["eat","tea","tan","ate","nat","bat"]) # [["bat"],["nat","tan"],["ate","eat","tea"]]
p group_anagrams([""]) # [[""]]
p group_anagrams(["a"]) # [["a"]]