class Towers
  attr_accessor :discs
  def initialize
    @discs = [[3, 2, 1], [], []]
  end

  def move(from_tower, to_tower)
    to = @discs[to_tower]
    from = @discs[from_tower]
    if from.empty?
      raise "you can't move towers is empty"
    elsif to.empty? || from.last < to.first
      move_disc = from.pop
      to.push(move_disc)
    else
      raise "Can't move larger disc onto smaller disc"
    end

  end

  def won?
    @discs[1].length == 3 || @discs[2].length == 3 ? true : false
  end
end
