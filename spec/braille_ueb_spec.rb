require_relative '../lib/braille_ueb'

describe BrailleUEB do

  it "should convert the alphabet" do
    verify "a", "\u2801"
    verify "b", "\u2803"
    verify "c", "\u2809"
  end

  it "should convert capital letters" do
    verify "Z", "\u2820\u2835"
  end

  it "should convert single numbers" do
    verify "1", "\u283c\u2801"
    verify "2", "\u283c\u2803"
    verify "3", "\u283c\u2809"
  end

  it "should only put the number prefix for the the first number" do
    verify "12", "\u283c\u2801\u2803"
  end

  it "should convert a period to a full stop" do
    verify "Z.", "\u2820\u2835\u2832"
  end

  it "should convert a comma" do
    verify ",", "\u2802"
  end

  it "should perform contractions" do
    verify "like", "\u2807"
  end

  it "should perform contractions that end with punctuation" do
    verify "like.", "\u2807\u2832"
  end

  it "should captialize contractions" do
    verify "Like", "\u2820\u2807"
  end

  def verify(english, braille)
    BrailleUEB.translate(english).should == braille
  end

end
