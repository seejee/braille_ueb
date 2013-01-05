#encoding: UTF-8
require_relative '../lib/braille_ueb'

describe BrailleUEB do

  it 'should convert the alphabet' do
    verify 'a', '⠁'
    verify 'b', '⠃'
    verify 'c', '⠉'
  end

  it 'should convert capital letters' do
    verify 'Z', '⠠⠵'
  end

  it 'should convert single numbers' do
    verify '1', '⠼⠁'
    verify '2', '⠼⠃'
    verify '3', '⠼⠉'
  end

  it 'should only put the number prefix for the the first number' do
    verify '12', '⠼⠁⠃'
  end

  it 'should convert a period to a full stop' do
    verify 'Z.', '⠠⠵⠲'
  end

  it 'should convert a comma' do
    verify ',', '⠂'
  end

  it 'should perform contractions' do
    verify 'like', '⠇'
  end

  it 'should handle special wordsigns' do
    verify 'and', '⠯'
  end

  it 'should perform contractions that end with punctuation' do
    verify 'like.', '⠇⠲'
  end

  it 'should captialize contractions' do
    verify 'Like', '⠠⠇'
  end

  def verify(english, braille)
    BrailleUEB.translate(english).should == braille
  end

end
