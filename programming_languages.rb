require 'pry'
def reformat_languages(languages)
  new_hash = {}
  style_arr = languages.keys
  languages.each do |style, langs|
    langs.each do |lang, info|
      info.each do |key, value|
        arr = []
        key1 = key
        value1 = value
        if languages[style_arr[0]].has_key?(lang) && languages[style_arr[1]].has_key?(lang)
          new_hash[lang] = {key => value, style: style_arr}
        else 
          new_hash[lang] = {key => value, style: [style]}
        end
      end
    end
  end 
  new_hash
end
