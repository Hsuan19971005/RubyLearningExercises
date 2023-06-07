# 編號：CANDY-019
# 程式語言：Ruby
# 題目：檢查是否為某個數字的平方數
def isSquare(num)
  return false if num < 0
  return num ** 0.5 == (num ** 0.5).ceil
end

p isSquare(0); # true
p isSquare(4); # true
p isSquare(5); # false
p isSquare(100); # true
p isSquare(-4); # false
p isSquare(-1); # false
