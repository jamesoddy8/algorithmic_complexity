require 'test_framework'

describe Shuffle do

  it 'returns [1] when input is [1]' do
    expect(subject.shuffle([1])).to eq [1]
  end
end
