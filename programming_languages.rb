require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  #new_hash[:my_key] = "my value"
  #hash[:my_key] = {second_level_key: "second level value"}

  object_languages = languages[:oo] #the object_languages (and their data)
  functional_languages = languages[:functional] #the functional_languages (and their data)

  languages.each do |key, value| #loop over languages hash, keys = :oo and :functional, values equal 4 oo languages and 4 functional languages
     #binding.pry
    value.each do |key, value| #loop over 8 languages, first key = :ruby, first value = {:type=>"interpreted"}
      #binding.pry
      new_hash[key] = value # assigning keys in this loop, the languages, as the values in my new_hash...
      #AKA key/value in new_hash is ":language_name => {:type => "whatever_type"}"

      #hash[:my_key] = {second_level_key: "second level value"}
      if object_languages.include?(key) && functional_languages.include?(key) #if language is an object_language AND a functional_language... ahem, Javascript, you special snowflake...
        new_hash[key][:style] = [:oo, :functional] #this is adding ":style => [:oo]" to the object_languages"
      elsif object_languages.include?(key) #if language is an object_language...
        new_hash[key][:style] = [:oo] #this is adding ":style => [:oo]" to the object_languages"
      elsif functional_languages.include?(key) #if language is a functional_languages...
        new_hash[key][:style] = [:functional] #this is adding ":style => [:oo]" to the object_languages"
      end #end if statement

    end #end each loop
  end #end each loop
  #puts new_hash #to see what i'm getting
  return new_hash #return new_hash, which takes data from the languages hash, reformats it, and adds a :style key/value pair
end #end method
