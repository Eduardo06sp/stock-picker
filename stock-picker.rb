stock_prices = [5, 3, 2]

def stock_picker(prices)
  best_buy = prices[0]
  best_sell = prices[1]
  best_profit = best_sell - best_buy

  buy_index = 0
  sell_index = 1

  while buy_index != prices.index(prices.last) - 1
    buy_price = prices[buy_index]
    sell_price = prices[sell_index]
    profit = sell_price - buy_price

    test_array = prices[sell_index..last]

    test_array.each do |test_sell|
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
