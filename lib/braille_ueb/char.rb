module BrailleUEB
  class Char < String

    def upper?
      c == c.upcase
    end

    def number?
      NUMBER.has_key?(c)
    end

    def punctuation?
      PUNCTUATION.has_key?(c)
    end

    def letter?
      ALPHA.has_key?(c.downcase)
    end

    private

    def c
      self
    end

  end
end
