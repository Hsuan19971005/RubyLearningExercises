# 編號：CANDY-018
# 程式語言：Ruby
# 題目：實作一個可以印出隨機整數的函數
# /**說明：
#  * 利用random()產生大於等於0，且小於1的數字，利用*(max-min)展開隨機的區間，+min使區間平移。*/
def randomNumber(*range)
  return rand(0...range[0]) if range.count == 1
  return rand(range[0]...range[1]) if range.count == 2
end
p randomNumber(50) # 隨機印出 0 ~ 49 之間的任何一個數字
p randomNumber(5, 30) # 隨機印出 5 ~ 29 之間的任何一個數字
