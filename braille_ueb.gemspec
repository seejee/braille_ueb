Gem::Specification.new do |s|
  s.name        = 'braille_ueb'
  s.version     = BrailleUEB::VERSION
  s.date        = Date.today.to_s
  s.summary     = "A translator for Unified English Braille (UEB)"
  s.description = "A translator for Unified English Braille (UEB)"
  s.authors     = ["Chris Geihsler"]
  s.email       = 'chris@geihsler.net'
  s.files       = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
  s.homepage    = 'https://github.com/seejee/braille_ueb/'
end
