require 'yaml'
require 'pp'
require 'pry'

def load_library(path)
  #path #=> "./lib/emoticons.yml"
  emoticons = YAML.load_file(path)
  # emoticons #=> HoA #=> {"angel"=>["O:)", "☜(⌒▽⌒)☞"],[]...etc}
  new = {'get_meaning' => {}, 'get_emoticon' => {}}

  emoticons.each do |key,value|
    ['get_emoticon'][value[0]]new = emoticons[key][1]
    binding.pry
    new['get_meaning'][value[1]] = key
  end
  new
end

def get_japanese_emoticon(hash)
  japanese_emoticon = []
  hash.map.values do |value|
binding.pry
  end
  japanese_emoticon
end

def get_english_meaning
  # code goes here
end

#ruby-enumerables-hash-practice-emoticon-translator-lab-austin-web-030920/
# emoticons = YAML.load_file(ruby-enumerables-hash-practice-emoticon-translator-lab-austin-web-030920/lib/emoticons.yml)