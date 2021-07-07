require "pry"

def reformat_languages(languages_hash)
  reformatted_hash = {}
  
  languages_hash.each do |style, languages|
    languages.each do |language, types|
      if reformatted_hash.include?(language) == false
        reformatted_hash[language] = types
        reformatted_hash[language][:style] = []
      end
    end
    reformatted_hash.each do |language, data|
      if languages_hash[style].include?(language)
        reformatted_hash[language][:style] << style
      end
    end
  end
  reformatted_hash
  # binding.pry
end
