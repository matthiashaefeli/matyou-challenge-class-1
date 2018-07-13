require './src/tree'

class Apple < Tree

  def initialize(params = {})
    super
  end

  def grow
    super
    if @age >= 12 then will_die end
    @height == 6 ? @height : @height += 1
    @age >= 10 ? @fruits = [] : 10.times { @fruits.push(Fruit.new) }
  end

end
