require 'braille_ueb/constants' unless defined?(Motion::Project::Config)
require 'braille_ueb/char' unless defined?(Motion::Project::Config)
require 'braille_ueb/word' unless defined?(Motion::Project::Config)

module BrailleUEB

  def self.translate(input)
    words = input.scan(/[0-9A-Za-z_.!?,,]+/)
    translated = words.map { |w| Token.new(w).translate }
    translated.join(' ')
  end

end

