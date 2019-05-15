require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language|
    language.each do |key, type|
      if new_hash[key] == nil
        new_hash[key] = type
      end
      if new_hash[key][:style] == nil
        new_hash[key][:style] = [] << style
      else
        new_hash[key][:style] << style
      end
    end
  end
  new_hash
end
