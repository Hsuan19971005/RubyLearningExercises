# 編號：CANDY-007
# 程式語言：Ruby
# 題目：在某個數字陣列裡，可能藏有某個不合群的奇數或偶數，試著找出它！
def findSomeDifferent(numbers)
  numbers.count { |e| e.even? } == 1 ? numbers.select { |e| e.even? }[0] : numbers.select { |e| e.odd? }[0]
end

p findSomeDifferent([2, 4, 0, 100, 4, 11, 2602, 36]) # 印出 11
p findSomeDifferent([160, 3, 1719, 19, 11, 13, -21]) # 印出 160
