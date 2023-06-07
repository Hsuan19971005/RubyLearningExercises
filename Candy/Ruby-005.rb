# 編號：CANDY-005
# 程式語言：Ruby
# 題目：完成函數的內容，把傳進去的數字的每個位數平方之後組合在一起
def squareDigits(num)
  num.to_s.split("").map { |e| e.to_i ** 2 }.join
end

p squareDigits(3212);  # 印出 9414
p squareDigits(2112);  # 印出 4114
p squareDigits(387)  # 印出 96449
