require './src/apple'
require './src/pear'
require './src/cherry'
require './src/apricot'
require './src/fruit'

describe 'apple' do
  let(:apple) { Apple.new(:height => 1) }

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
end

describe 'pear' do
  let(:pear) { Pear.new(age: 2, height: 2) }

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