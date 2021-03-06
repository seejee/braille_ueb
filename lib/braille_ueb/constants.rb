#encoding: UTF-8
module BrailleUEB

  ALPHA = {
    'a' => '⠁',
    'b' => '⠃',
    'c' => '⠉',
    'd' => '⠙',
    'e' => '⠑',
    'f' => '⠋',
    'g' => '⠛',
    'h' => '⠓',
    'i' => '⠊',
    'j' => '⠚',
    'k' => '⠅',
    'l' => '⠇',
    'm' => '⠍',
    'n' => '⠝',
    'o' => '⠕',
    'p' => '⠏',
    'q' => '⠟',
    'r' => '⠗',
    's' => '⠎',
    't' => '⠞',
    'u' => '⠥',
    'v' => '⠧',
    'w' => '⠺',
    'x' => '⠭',
    'y' => '⠽',
    'z' => '⠵'
  }

  NUMBER = {
    '1' => '⠁',
    '2' => '⠃',
    '3' => '⠉',
    '4' => '⠙',
    '5' => '⠑',
    '6' => '⠋',
    '7' => '⠛',
    '8' => '⠓',
    '9' => '⠊',
    '0' => '⠚'
  }

  SPECIAL = {
    :capital => '⠠', 
    :number  => '⠼'
  }

  PUNCTUATION = {
    '.' => '⠲', 
    ',' => '⠂'
  }

  GROUPS = {
    'and'   => '⠯',
    'for'   => '⠿',
    'of'    => '⠷',
    'the'   => '⠮',
    'with'  => '⠾',
  }

  CONTRACTIONS = {
    'but'   => '⠃',
    'can'   => '⠉',
    'do'    => '⠙',
    'every' => '⠑',
    'from'  => '⠋',
    'go'    => '⠛',
    'have'  => '⠓',
    'just'  => '⠚',
    'knowledge' => '⠅',
    'like'  => '⠇',
    'more'  => '⠍',
    'not'   => '⠝',
    'people' => '⠏',
    'quite' => '⠟',
    'rather' => '⠗',
    'so'    => '⠎',
    'that'  => '⠞',
    'us'    => '⠥',
    'very'  => '⠧',
    'will'  => '⠺',
    'it'    => '⠭',
    'you'   => '⠽',
    'as'    => '⠵'
  }

end
