require 'pry'

=begin
  :language => {
  :type => interpreted/compiled
  :style => [:oo, :functional]
}

=end

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, lang_info|
    #binding.pry
    lang_info.each do |lang, type|
      #binding.pry
      type.each do |key, value|
        new_hash[lang] = {
          type: nil,
          style: []
        }
        #binding.pry
      end
    end
  end
  languages.each do |style, lang_info|
    lang_info.each do |lang, type|
      type.each do |key, value|
         new_hash[lang][:type] = value
         new_hash[lang][:style] << style
       end
     end
  end
  return new_hash
end
