
#my_uniq

def my_uniq(arr)
  result = []
  arr.each do |el|
    result << el unless result.include?(el)
  end
  result
end

def two_sum(arr)

  pairs = []

  (0..arr.length - 2).each do |i|
    ((i + 1)..arr.length - 1).each do |j|
      pairs << [i, j] if arr[i] + arr[j] == 0
    end
  end
  pairs
end


def my_tranpose(rows)
  hash = Hash.new { |h, k| h[k] = [] }
  (0...rows.length).each do |i|
    rows.each do |row|
      hash[i] << row[i]
    end
  end
  hash.values

end

def stock_picker(stock_prices)
  return "sorry you lost your money!" if stock_prices.reverse == stock_prices.sort

  result = []
  profit = 0

  stock_prices.each_with_index do |price1, idx1|
    stock_prices.each_with_index do |price2, idx2|
      next if idx1 >= idx2
      gain = price2 - price1
      if gain > profit
        profit = gain
        result = [idx1, idx2]
      end
    end
  end
  result
end
