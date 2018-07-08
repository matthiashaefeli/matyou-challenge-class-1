require './src/apple'

describe 'apple' do
  let(:apple) { Apple.new }

  it 'creates a apple tree' do
    expect(apple).to be_instance_of(Apple)
  end

  it 'has fruits' do
    expect(apple.has_fruits).to be_kind_of(Array)
  end
end

describe 'pear' do
  let(:pear) { Pear.new }

  it 'creates a pear tree' do
    expect(pear).to be_instance_of(Pear)
  end

  it 'has fruits' do
    expect(pear.has_fruits).to be_kind_of(Array)
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
end

describe 'apricot' do
  let(:apricot) { Apricot.new }

  it 'creates a apricot teer' do
    expect(apricot).to be_instance_of(Apricot)
  end

  it 'has fruits' do
    expect(apricot.has_fruits).to be_kind_of(Array)
  end
end