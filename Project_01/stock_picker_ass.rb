def picker(prices)
  best_profit = 0
  best_bye_sell_day = ''
  
  prices.each_with_index do |buy_price,buy_day| #first loop through array index equal to days 
    prices.each_with_index do |sell_price,sell_day| #again loop to find selling price and days
      profit = sell_price - buy_price # to find profit

      if profit > best_profit && buy_day < sell_day 
        #here when looping through the array try to find the highest profit and buying day must be the smallest day(smallest index) and selling day must be highest because first stock must be buy 
        best_profit = profit
        best_bye_sell_day = [buy_day,sell_day]
      end
    end
  end
  p best_bye_sell_day
  best_bye_sell_day    

end


prices = [17,3,6,9,15,20,6,1,10]
picker(prices)