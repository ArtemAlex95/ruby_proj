# frozen_string_literal: true

# stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell.
#  Days start at 0.

def stock_picker(prices)
  min_price = prices[0]
  min_index = 0

  profit = 0
  days = [0, 0]

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
      next
    end

    if price - min_price > profit
      profit = price - min_price
      days = [min_index, index]
    end
  end

  days
end

prices = [3, 2, 6, 25, 6, 26, 23, 4, 23, 15, 1, 6, 5]

p stock_picker(prices)
