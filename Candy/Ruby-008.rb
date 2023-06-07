# 編號：CANDY-008
# 程式語言：Ruby
# 題目：傳入一字串，計算得分最高的字
#      英文字母 a 得 1 分、b 得 2 分、c 得 3 分，以此類推。
#      所有傳入的字都是小寫。
def highestScoreWord(input)
  score = input.split(" ").map { |e| e.split("").reduce(0) { |sum, e| sum + e.ord - "a".ord - 1 } }
  input.split(" ").at(score.index(score.max))
end

p highestScoreWord("lorem ipsum dolor sit amet") #  印出 ipsum
p highestScoreWord("heyn i need a rubygem up to build this") #  印出 rubygem
p highestScoreWord("in time machine there are some bugs") #  印出 there
