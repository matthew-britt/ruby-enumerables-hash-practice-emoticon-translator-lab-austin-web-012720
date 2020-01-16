# require modules here
require "yaml"

def load_library(file)
  hash = YAML.load_file(file)
  emoticons = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  hash.each do |key, value|
    english = value[0]
    japanese = value[1]
    emoticons["get_meaning"][japanese] = key.to_s 
    emoticons["get_emoticon"][english] = japanese
  end
  emoticons
  
end

def get_japanese_emoticon(file, emoticon)
  emoticons = load_library(file)
end

def get_english_meaning
  # code goes here
end