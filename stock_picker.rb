def stockpicker(prices)
  best_days = []
  profit = 0

  #Assume best day is the first
  buy_price = prices[0]

  #Check all the following days for profit
  for i in 1..prices.length-1
    sell_price = prices[i]

    #If next day the price is lower, profit would be negative. Buy on that day instead. 
    if sell_price < buy_price
      #Best buy price now
      buy_price = sell_price
      next
    end

    #Check if the profit of the current pair is better than the max.
    if (sell_price - buy_price) > profit
      profit = sell_price - buy_price
      best_days[0] = prices.index(buy_price)
      best_days[1] = prices.index(sell_price)
    end
  end
  puts "For maximum profit of #{profit}$ buy on day #{best_days[0]} and sell on day #{best_days[1]}"
end


stockpicker([17,3,6,9,15,8,6,1,10])