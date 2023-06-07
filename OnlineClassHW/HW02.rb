# 1. 把陣列 [1, 3, 4, 1, 7, nil, 7] 由小到大排序，並且移除 nil 以及重複的數字。
list = [1, 3, 4, 1, 7, nil, 7]
p list.compact.uniq.sort

# 2. 計算 1 ~ 100 之間所有單數的總和
p (1..100).select{|e| e.odd?}.sum