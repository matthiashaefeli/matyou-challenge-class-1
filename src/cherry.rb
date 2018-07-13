require './src/tree'

class Cherry < Tree

  def initialize(params = {})
    super
  end

  def grow
    super
    if @age >= 18 then will_die end
    @height >= 18 ? @height : @height += 1
    @age >= 15 ? @fruits = [] : 40.times { @fruits.push(Fruit.new) }
  end

end