module Changer
  def self.for(amount)
    purse = []
    if amount >= 25
      (amount / 25).times { purse << 25 }
      amount = amount - (25 * (amount / 25))
    end
    if amount >= 10
      (amount / 10).times { purse << 10 }
      amount = amount - (10 * (amount / 10))
    end
    if amount >= 5
      (amount / 5).times { purse << 5 }
      amount = amount - (5 * (amount / 5))
    end
    if amount >= 1
      (amount / 1).times { purse << 1 }
      amount = amount - (1 * (amount / 1))
    end
    purse
  end
end

# Above to Below - BOOM MAGIC

# module Changer
#   def self.for(amount)
#     purse = []
#     coins = [25, 10, 5, 1]
#     coins.each do |coin|
#       if amount >= coin
#         (amount / coin).times { purse << coin }
#         amount = amount - (coin * (amount / coin))
#       end
#     end
#     purse
#   end
# end
#
#
