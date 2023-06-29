# 771. Jewels and Stones
# Easy
# Related Topics: Hash Table, String

# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
  stones.split("").reduce(0) do |acc, cur| 
    acc + (jewels.include?(cur) ? 1 : 0)
  end
end

p num_jewels_in_stones("aA", "aAAbbbb") # 3
p num_jewels_in_stones("z", "ZZ") # 0