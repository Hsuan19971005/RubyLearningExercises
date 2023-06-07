# 編號：CANDY-017
# 程式語言：Ruby
# 題目：計算數字的 2 進位裡有幾個 1
# 範例：5 -> 101 -> 2 個 1
def countBits(num)
  sum = 0
  while(num != 0)
    sum +=1 if (1 & num == 1)
    num = num >> 1
  end
  sum
end
p countBits(1234) # 5
p countBits(1450) # 6
p countBits(9527) # 8
