require 'caesar.rb'

describe '#caesar_cipher' do
  it 'shifts a single word' do
    expect(caesar_cipher('abc', 3)).to eql('def')
  end
end
