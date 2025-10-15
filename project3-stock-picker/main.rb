stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
max_profit = 0
best_days = []
  arr.each_with_index do |buy_price, buy_index|
    arr[(buy_index + 1)..-1].each_with_index do |sell_price, sell_index|
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_index, buy_index + 1 + sell_index]
      end
    end
  end 
  best_days
end

stock_picker(stock_prices)