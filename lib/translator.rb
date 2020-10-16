# require modules here
require 'pry'
require 'yaml'
def load_library(filepath)
  emoticons_hash = YAML.load_file (filepath)
  puts emoticons_hash.inspect

  language_hash = {}
  emoticons_hash.each do |emoticon, value|
   language_hash[emoticon] = emoticons_hash[emoticon]
   #binding.pry
 end

 language_hash.map do |emoticon, language|
   language_hash[emoticon] = {:english => "", :japanese => ""}
   language_hash[emoticon][:english] = emoticons_hash[emoticon][0]
   language_hash[emoticon][:japanese] = emoticons_hash[emoticon][1]
 end
  binding.pry
  puts "hello"
end

def get_japanese_emoticon
  # code goes here
  binding.pry
  puts "hello"
end

def get_english_meaning
  # code goes here
  binding.pry
  puts "hello"
end
