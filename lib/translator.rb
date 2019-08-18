# require modules here
require 'yaml'

def load_library(file)
  library = YAML.load_file(file)
  new_hash = {"get_meaning" =>{}, "get_emoticon" =>{}}
  library.each do |key, value|
    new_hash["get_meaning"][value[1]] = key
    new_hash["get_emoticon"][value[0]] = value[1]
  end
 new_hash
end


# def get_japanese_emoticon(eng_emoji)
#   load_library.each do |key, value|
#     if eng_emoji == value[0]
#       return value[1]
#     end
#   end
# end

# def get_english_emoji(jap_emoji)
#   load_library.each do |key, val|
#     if jap_emoji == val[1]
#       return val[0]
#     end
#   end
# end
  

def get_japanese_emoticon(file, emoticon)
 library = load_library(file)
  if library["get_emoticon"].include?(emoticon)
     library["get_emoticon"][emoticon]
 else
   
 
end

def get_english_meaning
  load_library.each do |key, val|
    if jap_emoji == val[1]
      return val[0]
    end
  end
end