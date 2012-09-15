require 'braille_ueb/constants'
require 'braille_ueb/char'
require 'braille_ueb/word'

module BrailleUEB

  def self.translate(input)
    words = input.scan(/[0-9A-Za-z_.!?,,]+/)
    translated = words.map { |w| Token.new(w).translate }
    translated.join(' ')
  end

end

