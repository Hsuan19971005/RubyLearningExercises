# 1. 請使用迴圈的方式，在畫面上印出以下結果：
# *
# **
# ***
# ****
# *****
def print_stairs(layer)
  layer.times {|i| p '*'* (i+1)}
end
print_stairs(5)

# 2. 請完成以下計算潤年的方法：
def is_leap_year?(y)
  y % 4 == 0  && y % 100 != 0 || y % 400 == 0
end

puts is_leap_year?(1998)  # 印出 false
puts is_leap_year?(2000)  # 印出 true
puts is_leap_year?(2100)  # 印出 false

# 3. 請讓這個 BMI 計算方法可以顯示期待的結果
def bmi_calculator(height, weight)
  (weight / (height * 0.01)**2 ).round 1
end

puts bmi_calculator(170, 50) # 印出 17.3 (小數點以下一位，四捨五入)
puts bmi_calculator(180, 65) # 印出 20.1 (小數點以下一位，四捨五入)