require './src/apple'

describe 'apple' do
  let(:apple) { Apple.new }
  
  it 'creates an instance of an apple' do
    expect(apple).to be_instance_of(Apple)
  end
end
