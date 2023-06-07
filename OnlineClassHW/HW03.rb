# 1. 停車場的收費方式為：
# 機車：不計時數，每天 20 元
# 汽車：前 2 個小時，每小時 40 元；超過 2 小時之後每小時 30 元。未滿一小時以一小時計費。停車費每天最高上限為 500 元。
# 請完成以下計算公式
def calc_parking_fee(vehicle_type, parking_hour)
  return 20 if vehicle_type == :motocycle
  parking_hour = parking_hour.ceil
  case parking_hour
  when (1..2)
    parking_hour * 40
  when (3..16)
    80 + (parking_hour - 2) * 30
  else
    500
  end
end

puts calc_parking_fee(:motocycle, 2)  # 印出 20
puts calc_parking_fee(:motocycle, 8)  # 印出 20

puts calc_parking_fee(:car, 1.5)      # 印出 80
puts calc_parking_fee(:car, 4)        # 印出 140
puts calc_parking_fee(:car, 5.5)      # 印出 200
puts calc_parking_fee(:car, 18)       # 印出 500
puts '------------------------------------------'

# 2. 完成以下實作內容
class ATM
  attr_reader :balance
  def initialize(balance)
    @balance = balance
  end
  
  def withdraw(amount)
    return nil if @balance < amount
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end
end

atm = ATM.new(10)

atm.withdraw(5)
puts atm.balance  # 印出 5

atm.deposit(10)
puts atm.balance  # 印出 15