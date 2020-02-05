def stock_picker(prices)
  best_buy = prices[0]
  best_sell = prices[1]
  best_profit = best_sell - best_buy

  buy_price
  sell_price
  profit

  buy_index = 0
  sell_index = 1

  while buy_price != prices.last - 1
    buy_price = prices[buy_index]
    sell_price = prices[sell_index]
    profit = sell_price - buy_price

    if profit > best_profit
    end

    buy_index += 1
    sell_index += 1
  end
end
