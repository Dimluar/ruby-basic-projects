def stock_picker(data)
  max_profit = 0
  index = []

  data.each.with_index do |buy, buy_index|

    data.each.with_index do |sell, sell_index|

      if sell_index > buy_index && max_profit < sell - buy
        max_profit = sell - buy
        index = [buy_index, sell_index]
      end
    end
  end

  unless index.empty?
    puts "For a profit of #{data[index[1]]}$ - #{data[index[0]]}$ == #{max_profit}$"
    index
  else
    "Not worth it."
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10])
