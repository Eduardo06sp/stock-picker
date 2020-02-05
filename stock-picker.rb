stock_prices = [5, 3, 2]

def stock_picker(prices)
  best_buy = prices[0]
  best_sell = prices[1]
  best_profit = best_sell - best_buy

  buy_index = 0
  sell_index = 1

  while buy_index != prices.index(prices.last)
    buy_price = prices[buy_index]

    test_array = prices[sell_index..prices.last]

    test_array.each do |test_sell|
      sell_price = test_sell
      profit = test_sell - buy_price

      if profit > best_profit
        best_buy = buy_price
        best_sell = sell_price
        best_profit = profit
      end
    end

    buy_index += 1
    sell_index += 1
  end

  return best_profit
end

p stock_picker(stock_prices)
