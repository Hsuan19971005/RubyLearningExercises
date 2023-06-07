# 1. 有一個程式語言的名單如下：
language = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']
# (1) 請寫一段程式，印出 P 開頭的程式語言
p language.select{|e| e.start_with? 'P'}
# (2) 找出名字最短的程式名語
p language.sort_by{|e| e.length}.first
puts '-'*40

# 2. 完成下列功能
require 'Date'
def calc_age(birthday)
  (Date.today - Date.parse(birthday)).to_i / 365
end

puts calc_age('1985/1/2')  # 印出 35
puts calc_age('1997/8/28') # 印出 22
puts '-'*40

# 3. 台灣公司的統一編號跟身份證字號一樣都是有規則的：共八位數字

# 各數字分別乘以 1,2,1,2,1,2,4,1
# 例：統一編號為 53212539
# 先將統編每位數乘以一個固定數字固定值
#   5   3   2   1   2   5   3   9
# x 1   2   1   2   1   2   4   1
# ================================
#   5   6   2   2   2  10  12   9

# 接著將所得值分成十位數及個位數
# 將十位數與個位數全部結果值加總

# 判斷結果：
# 第一種: 加總之後的值可以被 10 整除即是正確的統編。
# 第二種: 或是，如果統編的第 7 碼是 7 的話，再把總值加 1 之後可 10 整除也是正確的統編。

def is_valid_company_no?(serial)
  return '格式不符' if serial.length != 8
  multiply_logic = [1,2,1,2,1,2,4,1]
  check_sum =  serial.split('').map{|e|e.to_i}.zip(multiply_logic).map{|e1, e2| (e1 * e2).digits.sum}
  check_sum.sum%10 == 0 || (serial[6] == '7' && (check_sum.sum + 1)%10 == 0)
end

puts is_valid_company_no?('2453680')  # 印出「格式不符」字樣
puts is_valid_company_no?('24536806') # 印出 true
puts is_valid_company_no?('12222539') # 印出 false