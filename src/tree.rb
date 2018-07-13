class Tree
attr_accessor :fruits, :height, :age

  def initialize(params = {})
    @fruits = params.fetch(:fruits, [])
    @height = params.fetch(:height, 0)
    @age = params.fetch(:age, 0)
    @alive = true
  end

  def has_fruits
    @fruits
  end

  def height
    @height
  end

  def age
    @age
  end

  def alive
    @alive
  end

  def grow
    @age += 1
  end

  def will_die
    @alive = false
  end

end