require 'caesar'

describe '#caesar_cipher' do
  it 'shifts a single word' do
    expect(caesar_cipher('abc', 3)).to eql('def')
  end

  it 'shifts uppercase letters' do
    expect(caesar_cipher('aBc', 3)).to eql('dEf')
  end

  it 'leaves non-letter characters as-is' do
    expect(caesar_cipher('a cat and a dog!', 1)).to eql('b dbu boe b eph!')
  end

  it 'shifts lowercase letters back to the beginning of the alphabet' do
    expect(caesar_cipher('zoology', 1)).to eql('appmphz')
  end

  it 'shifts all letters back to the beginning of the alphabet' do
    expect(caesar_cipher('ZoologY', 2)).to eql('BqqnqiA')
  end

  it 'works for large shifts' do
    expect(caesar_cipher('zoology', 53)).to eql('appmphz')
  end
end
