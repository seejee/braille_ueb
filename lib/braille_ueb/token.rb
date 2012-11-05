module BrailleUEB
  class Token
    def initialize(token)
      @word, @punc = split(token)
    end

    def translate
      braille = @word.translate 
      braille << PUNCTUATION[@punc] if @punc
      braille
    end

    private

    def split(token)
      punctuation = PUNCTUATION.keys.join("")
      word = token.tr(punctuation, "")
      punc = token.match("[#{punctuation}]")
      punc = punc[0] if punc
      [ Word.new(word), punc ]
    end
  end
end
