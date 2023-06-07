# 編號：CANDY-016
# 程式語言：Ruby
# 題目：把原本 snake_case 的字轉換成 camelCase 格式
# 範例："hello_world" -> "helloWorld"
def toCamelCase(str)
  str.split("_").reduce{|acc, current| acc+current[0].upcase+current[1..] }
end
p toCamelCase("book") # book
p toCamelCase("book_store") # bookStore
p toCamelCase("get_good_score") # getGoodScore
