require 'yaml'
require 'pp'
require 'pry'

def load_library(path)
  #path #=> "./lib/emoticons.yml"
  emoticons = YAML.load_file(path)
  # emoticons #=> HoA #=> {"angel"=>["O:)", "☜(⌒▽⌒)☞"],[]...etc}
  new = {'get_meaning' => {}, 'get_emoticon' => {}}

  emoticons.each do |key,value|
    # key #=> "angel"
    # value #=> ["O:)", "☜(⌒▽⌒)☞"]
    new['get_emoticon'][value[0]] = emoticons[key][1]
    # new['get_emoticon'[value[0]] = "☜(⌒▽⌒)☞"
    new['get_meaning'][value[1]] = key
    binding.pry
  end
  new
end

def get_japanese_emoticon

end

def get_english_meaning
  # code goes here
end

#ruby-enumerables-hash-practice-emoticon-translator-lab-austin-web-030920/
# emoticons = YAML.load_file(ruby-enumerables-hash-practice-emoticon-translator-lab-austin-web-030920/lib/emoticons.yml)