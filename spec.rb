require_relative 'stack'

describe Stack do

  subject(:stack) { Stack.new }

  describe '#push' do
    it 'pushes value onto itself' do
      stack.push(42)
      expect(stack.size).to eq 1
    end
  end

  describe '#pop' do
    it 'pop the last value pushed' do
      stack.push(42).push(38).push(2)
      expect(stack.pop).to eq 2
    end
  end

  describe '#size' do

    context 'when empty' do

      let(:intital_values) { [] }
      
      it 'is zero' do
        expect(stack.size).to eq 0
      end
    end
  end
end
