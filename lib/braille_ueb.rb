require 'braille_ueb/constants'
require 'braille_ueb/char'
require 'braille_ueb/word'

module BrailleUEB

  VERSION = '0.0.1' 

  def self.translate(input)
    words = input.scan(/[0-9A-Za-z_.!?,,]+/)
    translated = words.map { |w| Token.new(w).translate }
    translated.join(' ')
  end

end

