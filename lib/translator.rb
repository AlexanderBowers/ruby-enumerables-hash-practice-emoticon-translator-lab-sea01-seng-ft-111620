# require modules here
require 'pry'
require 'yaml'
def load_library(filepath)
  emoticons_hash = YAML.load_file (filepath)
  puts emoticons_hash.inspect

  language_hash = {}
  emoticons_hash.each do |emoticon, value|
    language_hash[emoticon] = emoticons_hash[emoticon]
    language_hash[emoticon] = {:english => "", :japanese => ""}
    language_hash[emoticon][:english] = emoticons_hash[emoticon][0]
    language_hash[emoticon][:japanese] = emoticons_hash[emoticon][1]
  end
  emoticons_hash = language_hash
  emoticons_hash
end

def get_japanese_emoticon(filepath, emoticon)
  emoticons_hash = load_library(filepath)
  reply = "Sorry, that emoticon was not found"

    emoticons_hash.each do |key, emote|
       if emoticons_hash[key][:english] == emoticon
        reply = emoticons_hash[key][:japanese]
      end
    end
    return reply
  end
end

def get_japanese_emoticon(load_library, filepath, emoticon)
  load_library(filepath)
  language_hash.each do |general|
    if language_hash[general][:english] == emoticon
      return language_hash[general][:japanese]
    end
  end
end
>>>>>>> eb78fc08e9843d394a995ab7dab74cd1feda851c
#find emoticon in language_hash
#my emoticons_hash

def get_english_meaning(filepath, emoticon)
<<<<<<< HEAD
emoticons_hash = load_library(filepath)
reply = "Sorry, that emoticon was not found"

  emoticons_hash.each do |key, emote|
     if emoticons_hash[key][:japanese] == emoticon
      reply = key
    end
  end
  return reply
=======
load_library(filepath)

  @emoticons_hash.each do |key, emote|
     if @emoticons_hash[key][:japanese] == emoticon
      return key
    end
  end
>>>>>>> eb78fc08e9843d394a995ab7dab74cd1feda851c
end
