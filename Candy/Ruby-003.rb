# 還沒Candy
# 編號：CANDY-003
# 程式語言：Ruby
# 題目：完成函數的內容，把陣列裡的 0 都移到最後面
list = [false, 1, 0, -1, 2, 0, 1, 3, "a"]

def moveZerosToEnd(arr)
  arr.select { |e| e != 0 }.concat(Array.new(arr.count(0), 0))
end

result = moveZerosToEnd(list)
p result # 印出 [false, 1, -1, 2, 1, 3, "a", 0, 0]

# def moveZerosToEnd(arr)
#   arr.select { |e| e != 0 }.concat(arr.select { |e| e == 0 })
# end
