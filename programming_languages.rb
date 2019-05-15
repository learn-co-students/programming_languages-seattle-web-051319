require "pry"
def reformat_languages(languages)
  # your code here
  new_hash = {}
  # oo_style_key = languages.filter {|style| style == :oo}
  #   binding.pry
  # style_key
  languages.each do |language_style, language_names|
    language_names.each do |language_name, type|
      new_hash[language_name]= type
      new_hash[language_name][:style]= []
      new_hash[language_name][:style] << :oo << :functional if languages[:oo].key?(language_name) && languages[:functional].key?(language_name)#and :functional has same key shovel both values into new type array
      if language_style == :functional
        new_hash[language_name][:style] << :functional
      elsif language_style == :oo # use shovel method to add styles to style key array
        new_hash[language_name][:style] << :oo
# binding.pry
      end

    end
    # binding.pry
  end
  new_hash
end
