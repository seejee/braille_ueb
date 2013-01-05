module BrailleUEB
  class Word
    def initialize(word)
      @word = word
    end

    def translate
      return "" if @word.empty?

      braille = ""
      braille << SPECIAL[:capital] if starts_with_upper?
      braille << SPECIAL[:number]  if starts_with_number?
      braille << @word.downcase

      CONTRACTIONS.each { |key, val|
        braille = braille.gsub(key, val)
      }

      GROUPS.each { |key, val|
        braille = braille.gsub(key, val)
      }

      ALPHA.each { |key, val|
        braille = braille.gsub(key, val)
      }

      NUMBER.each { |key, val|
        braille = braille.gsub(key, val)
      }

      braille

    end

    private

    def starts_with_upper?
      Char.new(@word[0]).upper?
    end

    def starts_with_number?
      Char.new(@word[0]).number?
    end
    
  end
end

