require './src/apple'
require './src/pear'
require './src/cherry'
require './src/apricot'
require './src/fruit'

describe 'apple' do
  let(:apple) { Apple.new(height: 1) }
  let(:appletwo) { Apple.new(age: 2) }
  let(:applethree) { Apple.new(age: 10, height: 6)}
  let(:applefour) { Apple.new(age:11, height: 6)}

  it 'creates a apple tree' do
    expect(apple).to be_instance_of(Apple)
  end

  it 'has fruits' do
    expect(apple.has_fruits).to be_kind_of(Array)
  end

  it 'has a height' do
    expect(apple.height).to eq 1
  end

  it 'has a age' do
    expect(apple.age).to eq 0
  end

  it 'has a age' do
    expect(appletwo.age).to eq 2
  end

  it 'ages one year' do
    apple.grow
    expect(apple.age).to eq 1
  end

  it 'grow (height)' do
    apple.grow
    expect(apple.height).to eq 2
  end

  it 'get fruits' do
    apple.grow
    expect(apple.fruits.length).to eq 10
  end

  it 'first fruit is an instance of a fruit' do
    apple.grow
    expect(apple.fruits[0]).to be_instance_of(Fruit)
  end

  it 'cant grow(height) if the tree is 6 height' do
    applethree.grow
    expect(applethree.height).to eq 6
  end

  it 'cant get fruits if tree is older then 10 years' do
    applethree.grow
    expect(applethree.fruits.length).to eq 0
  end

  it 'is alive' do
    expect(applefour.alive).to be true
  end

  it 'die if tree is 12 years old' do
    applefour.grow
    expect(applefour.alive).to eq false
  end
end

describe 'pear' do
  let(:pear) { Pear.new(age: 2, height: 2) }
  let(:peartwo) { Pear.new(age: 10, height: 9)}
  let(:pearthree) { Pear.new(age:14, heigth: 10)}

  it 'creates a pear tree' do
    expect(pear).to be_instance_of(Pear)
  end

  it 'has fruits' do
    expect(pear.has_fruits).to be_kind_of(Array)
  end

  it 'has a height' do
    expect(pear.height).to eq 2
  end

  it 'has a age' do
    expect(pear.age).to eq 2
  end

  it 'ages one year' do
    pear.grow
    expect(pear.age).to eq 3
  end

  it 'grow (height)' do
    pear.grow
    expect(pear.height).to eq 4
  end

  it 'get fruits' do
    pear.grow
    expect(pear.fruits.length).to eq 15
  end

  it 'first fruit is an instance of a fruit' do
    pear.grow
    expect(pear.fruits[0]).to be_instance_of(Fruit)
  end

  it 'cant grow(height) if the tree is 10 height' do
    peartwo.grow
    expect(peartwo.height).to eq 10
  end

  it 'cant get fruits if tree is older then 12 years' do
    pearthree.grow
    expect(pearthree.fruits.length).to eq 0
  end

  it 'is alive' do
    expect(pearthree.alive).to be true
  end

  it 'die if tree is 15 years old' do
    pearthree.grow
    expect(pearthree.alive).to eq false
  end
end

describe 'cherry' do
  let(:cherry) { Cherry.new }

  it 'creates a cherry tree' do
    expect(cherry).to be_instance_of(Cherry)
  end

  it 'has fruits' do
    expect(cherry.has_fruits).to be_kind_of(Array)
  end

  it 'has a height' do
    expect(cherry.height).to eq 0
  end
  
  it 'has a age' do
    expect(cherry.age).to eq 0
  end
end

describe 'apricot' do
  let(:apricot) { Apricot.new }

  it 'creates a apricot teer' do
    expect(apricot).to be_instance_of(Apricot)
  end

  it 'has fruits' do
    expect(apricot.has_fruits).to be_kind_of(Array)
  end

  it 'has a height' do
    expect(apricot.height).to eq 0
  end

  it 'has a age' do
    expect(apricot.age).to eq 0
  end
end