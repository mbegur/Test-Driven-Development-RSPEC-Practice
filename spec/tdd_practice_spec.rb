require 'rspec'
require 'tdd_practice'

describe "#my_uniq" do
  it "should remove duplicates fron the array" do
    array = [1, 2, 3, 3, 3]
    expect(my_uniq(array)).to eq([1, 2, 3])
  end

end

describe "#two_sum" do
  it "should return the pairs on index where the sum = 0" do
    array = [-1, 0, 2, -2, 1]
    expect(two_sum(array)).to eq([[0, 4], [2, 3]])
  end

  it "should return an empty array if no pairs sum equal 0" do
    array = [-5, 0, 2, -3, 1]
    expect(two_sum(array)).to eq([])
  end
end

describe "#my_tranpose" do
  it "should tranpose a matrix converting rows to columns" do
    rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]
  expect(my_tranpose(rows)).to eq(cols)

  end

end

describe "#stock_picker" do
  it "should return the pair of days that were the most profitable" do
    stock_prices = [5, 10, 2, 3, 15, 7, 1]
    expect(stock_picker(stock_prices)).to eq([2,4])
  end

  it "should return empty if there is never a profit" do
    stock_prices = [4, 3, 2, 0]
    expect(stock_picker(stock_prices)).to eq ("sorry you lost your money!")
  end

end
