require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'returns the sequence for a 1string with 1 shift' do
    expect(caesar_cipher('a', 1)).to eql('b')
  end
  it 'returns the sequence for multiple shift' do
    expect(caesar_cipher('a', 4)).to eql('e')
  end
  it 'returns the sequence for a string' do
    expect(caesar_cipher('abcd', 2)).to eql('cdef')
  end
  it 'returns the sequence for a string with multiple words' do
    expect(caesar_cipher('ab cd ef', 2)).to eql('cd ef gh')
  end
  it 'returns the sequence for a string with special characters' do
    expect(caesar_cipher('ab +cd 1ef', 2)).to eql('cd +ef 1gh')
  end
  it 'returns the sequence for a string with upcase' do
    expect(caesar_cipher('Ab +cd 1eF', 2)).to eql('Cd +ef 1gH')
  end
end
