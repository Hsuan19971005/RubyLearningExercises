# 編號：CANDY-020
# 程式語言：Ruby
# 題目：檢查字串的 x 跟 o 的數量是不是一樣多，不分大小寫
# 說明：字串內容全部轉成小寫，filter找出'x'以及'o'的數量 */
def xxoo(str)
  str = str.downcase
  return str.count("o") == str.count("x")
end
p xxoo("ooxx") # true
p xxoo("xxoo") # true
p xxoo("xxooo") #false
p xxoo("xoox") # true
p xxoo("ooAA") #false
p xxoo("xoXoA") # true
