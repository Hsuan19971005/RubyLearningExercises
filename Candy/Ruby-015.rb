# 編號：CANDY-015
# 程式語言：Ruby
# 題目：把原本的字串拆解成 2 個字元一組，若不足 2 個字則補上底線
# 範例：
#      "abcdef" -> ['ab', 'cd', 'ef']
#      "abcdefg" -> ['ab', 'cd', 'ef', 'g_']
def splitString(str)
  str = str.split("")
  str.map.with_index {|e, i| "#{str[i]}#{str.delete_at(i+1)}".ljust(2,"_")}
end
p splitString("abcdef") # ["ab", "cd", "ef"]
p splitString("abcdefg") # ["ab", "cd", "ef", "g_"]
p splitString("") # []
