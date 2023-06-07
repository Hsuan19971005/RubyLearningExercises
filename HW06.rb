# Q1：完成以下實作內容：
def calc_sum(param)
  if param.class == Array
    param.sum
  elsif param.nil?
    0
  else
    param
  end
end

puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
puts calc_sum(5)                # 印出 5
puts calc_sum(nil)              # 印出 0
puts '-'*30

# Q2：請想辦法讓以下程式可正常執行：
class String
  def greeting!
    "Hello, #{self.capitalize}"
  end
end
puts "kitty".greeting!  # 印出 Hello, Kitty

