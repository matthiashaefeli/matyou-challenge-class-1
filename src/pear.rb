require './src/tree'

class Pear < Tree

  def initialize(params = {})
    super
  end

  def grow
    super
    if @age >= 15 then will_die end
    @height >= 9 ? @height = 10 : @height += 2
    @age >= 12 ? @fruits = [] : 15.times { @fruits.push(Fruit.new) }
  end

end