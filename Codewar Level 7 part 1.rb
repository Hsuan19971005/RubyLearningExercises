# 1. 找出最短的字
# L7-001

def find_shortest(str)
  str.split.sort_by{|e| e.length}.first.length
end

RSpec.describe do
  it "找出最短的字" do
    expect(find_shortest("bitcoin take over the world maybe who knows perhaps")).to be 3
    expect(find_shortest("turns out random test cases are easier than writing out basic ones")).to be 3
    expect(find_shortest("lets talk about javascript the best language")).to be 3
    expect(find_shortest("i want to travel the world writing code one day")).to be 1
    expect(find_shortest("Lets all go on holiday somewhere very cold")).to be 2
  end
end

# ---------------------------------------------------------

# 2. 選出及格(60 分以上)的科目
# L7-002 選出及格(60 分以上)的科目

def my_languages(scores)
  scores.select{|subject, score| score >= 60}.keys
end

RSpec.describe do
  it "選出及格(60 分以上)的科目" do
    expect(my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})).to eq ["Ruby", "Python"]
    expect(my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71})).to eq ["Hindi", "Dutch", "Greek"]
    expect(my_languages({"C++" => 50, "ASM" => 10, "Haskell" => 20})).to eq []
  end
end

# ---------------------------------------------------------
# 3. 找出缺少的數字，例如 [-3, -2, 1, 5] 少了 -1、0、2、3、4 這幾個數字。
# L7-003 找出缺少的數字，例如 `[-3, -2, 1, 5]` 少了 -1、0、2、3、4 這幾個數字。

def find_missing_numbers(array)
  return [] if array.count < 1
  (array.min..array.max).to_a - array

end

RSpec.describe do
  it "找出缺少的數字" do
    expect(find_missing_numbers([-3,-2,1,4])).to eq [-1,0,2,3]
    expect(find_missing_numbers([-1,0,1,2,3,4])).to eq []
    expect(find_missing_numbers([])).to eq []
    expect(find_missing_numbers([0])).to eq []
    expect(find_missing_numbers([-4,4])).to eq [-3,-2,-1,0,1,2,3]
  end
end
# ---------------------------------------------------------
# 4. 工廠的某台印表機只能印出 a 到 m 的字，請完成實作內容，把不應該出現的字算出來：
# L7-004 工廠的某台印表機只能印出 a 到 m 的字，請完成實作內容，把不應該出現的字算出來

def printer_error(s)
  "#{s.scan(/[^a-m]/).length}/#{s.length}"
end

RSpec.describe do
it "不該出現的字" do
  expect(printer_error("aaabbbbhaijjjm")).to eq '0/14'
  expect(printer_error("aaaxbbbbyyhwawiwjjjwwm")).to eq '8/22'
  expect(printer_error("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz")).to eq '3/56'
end
end
# ---------------------------------------------------------
# 5. 一夥人去吃飯，大家先各自付帳，待後續再計算多退少補，請根據輸出結果完成以下實作。
# L7-005 一夥人去吃飯，大家先各自付帳，待後續再計算多退少補，請根據輸出結果完成以下實作。

def split_the_bill(bill)
  average =  bill.values.sum / bill.values.count
  bill.each{|k, v| bill[k] = v - average}
  # bill.tranform_values{|v| v - average}
end

RSpec.describe do
  it "帳單計算" do
    expect(split_the_bill('A' => 20, 'B' => 15, 'C' => 10)).to eq({'A' => 5.00, 'B' => 0.00, 'C' => -5.00})
    expect(split_the_bill('A' => 40, 'B' => 25, 'X' => 10)).to eq({'A' => 15.00, 'B' => 0.00, 'X' => -15.00})
  end
end
# ---------------------------------------------------------
# 6. 計算有幾個母音字母(a, e, i, o, u)
# L7-006 計算有幾個母音字母(a, e, i, o, u)

def vowel_count(string)
  string.count('aeiou')
end

RSpec.describe do
  it "計算有幾個母音字母" do
    expect(vowel_count("abracadabra")).to be 5
    expect(vowel_count("5xruby")).to be 1
    expect(vowel_count("iloveyou")).to be 5
  end
end
# ---------------------------------------------------------
# 7. 觀察輸出結果，實作相對應的程式：
# L7-007 觀察輸出結果，實作相對應的程式

def accum(s)
  s.split("").map.with_index{|e, i| "#{e.upcase}#{e.downcase * i}"}.join('-')
end

RSpec.describe do
  it "觀察輸出結果，實作相對應的程式" do
    expect(accum("ZpglnRxqenU")).to eq 'Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu'
    expect(accum("NyffsGeyylB")).to eq 'N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb'
    expect(accum("MjtkuBovqrU")).to eq 'M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu'
    expect(accum("EvidjUnokmM")).to eq 'E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm'
    expect(accum("HbideVbxncC")).to eq 'H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc'
  end
end

# ---------------------------------------------------------
# 8. 找出中間的字
# L7-008 找出中間的字

def get_middle(string)
  len = string.length
  len.odd? ? string[len/2] : string[len/2 -1, 2]
end

RSpec.describe do
  it "找出中間的字" do
    expect(get_middle("test")).to eq 'es'
    expect(get_middle("testing")).to eq 't'
    expect(get_middle("middle")).to eq 'dd'
    expect(get_middle("A")).to eq 'A'
    expect(get_middle("of")).to eq 'of'
  end
end
# ---------------------------------------------------------
# 9. 這是個三角形嗎？
# L7-009 這是個三角形嗎？

def is_triangle?(a, b, c)
  [a, b, c].min(2).sum > [a, b, c].max
end

RSpec.describe do
 it "這是個三角形嗎？" do
   expect(is_triangle?(1,2,2)).to be true
   expect(is_triangle?(7,2,2)).to be false
 end
end
# ---------------------------------------------------------
# 10. 幫信用卡號打馬賽克
# L7-010 幫信用卡號打馬賽克

def maskify(card_number)
  return card_number if card_number.length <= 4
  '#' * card_number[0..-5].length + card_number[-4, 4]
  # card_number.gsub(/.(?=....)/, '#')
end

RSpec.describe do
  it "幫信用卡號打馬賽克" do
    expect(maskify('4556364607935616')).to eq '############5616'
    expect(maskify('1')).to eq '1'
    expect(maskify('11111')).to eq '#1111'
  end
end
# ---------------------------------------------------------
# 11. 檢查是否有照順序排？
# L7-011 檢查是否有照順序排？

def is_sorted_and_how(arr)
  if arr == arr.sort
    'yes, ascending'
  elsif arr == arr.sort{|a, b| b <=> a}
    'yes, descending'
  else
    'no'
  end
end

RSpec.describe do
  it "檢查是否有照順序排？" do
    expect(is_sorted_and_how([1, 2])).to eq 'yes, ascending'
    expect(is_sorted_and_how([15, 7, 3, -8])).to eq 'yes, descending'
    expect(is_sorted_and_how([4, 2, 30])).to eq 'no'
  end
end

# ---------------------------------------------------------
# 12. 實作以下內容
# L7-012 實作以下內容

# 把 code 寫在這兒！
class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def greet
    "Hello, #{@first_name} #{@last_name}!"
  end
end

RSpec.describe do
  it "當個有禮貌的人" do
    person = Person.new('Bob', 'Smith')
    expect(person.greet).to eq 'Hello, Bob Smith!'
  end
end
# ---------------------------------------------------------
# 13. 實作以下內容
# L7-013 實作以下內容

class Block
  attr_reader :width, :length, :height
  def initialize(dimension)
    @width, @length, @height = dimension
  end

  def volume
    @width * @length * @height
  end

  def surface_area
    (@width * @length + @length * @height + @height * @width) * 2
  end
end

RSpec.describe do
  it "實作內容" do
    cube = Block.new([2,2,2])

    expect(cube.width).to be 2
    expect(cube.length).to be 2
    expect(cube.height).to be 2
    expect(cube.volume).to be 8
    expect(cube.surface_area).to be 24
  end
end
# ---------------------------------------------------------
# 14. 調整以下實作，讓程式可順利執行
# L7-014 調整以下實作，讓程式可順利執行
class Human
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def greet(your_name)
    "Hello #{your_name}, my name is #{@name}"
  end
end


RSpec.describe do
  it "打招呼！" do
    jack = Human.new("Jack")
    jill = Human.new("Jill")

    expect(jack.greet("Jill")).to eq "Hello Jill, my name is Jack"
    expect(jack.greet("Mary")).to eq "Hello Mary, my name is Jack"
    expect(jill.greet("Jack")).to eq "Hello Jack, my name is Jill"
    expect(jill.name).to eq 'Jill'
  end
end

# ---------------------------------------------------------
# 15. 計算不重複元素的總合
# L7-015 計算不重複元素的總合
def non_repeat_sum(arr)
  arr.select{|e| arr.count(e) == 1}.sum
end

RSpec.describe do
  it "計算不重複元素的總合" do
    expect(non_repeat_sum([4,5,7,5,4,8])).to be 15
    expect(non_repeat_sum([9, 10, 19, 13, 19, 13])).to be 19
    expect(non_repeat_sum([16, 0, 11, 4, 8, 16, 0, 11])).to be 12
    expect(non_repeat_sum([5, 17, 18, 11, 13, 18, 11, 13])).to be 22
    expect(non_repeat_sum([5, 10, 19, 13, 10, 13])).to be 24
  end
end
# ---------------------------------------------------------

