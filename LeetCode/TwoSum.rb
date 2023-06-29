# 1. Two Sum
# Easy
# Related Topics: Array, Hash Table

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  result = []
  nums.each.with_index do |e, i|
    num = target - e
    if hash[num] != nil  
      result = [hash[num], i]
    else
      hash[e] = i
    end
  end
  return result
end

p two_sum([2,7,11,15], 9) # [0, 1]
p two_sum([3,2,4], 6) # [1, 2]
p two_sum([3,3], 6) # [0, 1]