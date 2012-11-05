module BrailleUEB
  class Word
    def initialize(word)
      @word = word
    end

    def translate
      if contraction?
        contracted 
      else
        letter_by_letter
      end
    end

    private

    def contraction?
      CONTRACTIONS.has_key?(@word.downcase)
    end

    def contracted
      braille = ""
      braille << SPECIAL[:capital] if starts_with_upper?
      braille << CONTRACTIONS[@word.downcase]
      braille
    end

    def starts_with_upper?
      Char.new(@word[0]).upper?
    end

    def letter_by_letter
      braille = ""
      previous = Char.new("")

      @word.each_char do |c|
        c = Char.new(c)
        braille << translate_char(previous, c)
        previous = c
      end

      braille
    end

    def translate_char(previous, c)
      result = ""

      if c.letter?
        result << SPECIAL[:capital] if c.upper?
        result << ALPHA[c.downcase]
      elsif c.number?
        result << SPECIAL[:number] unless previous.number?
        result << NUMBER[c]
      else
        result << c
      end

      result
    end
  end
end

