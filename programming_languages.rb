def reformat_languages(languages)
	new_hash = {}
	languages.each do |style, list|
		list.each {|name, type| new_hash[name] = type}
	end	
	new_hash.each {|name, attributes| attributes[:style] = []}
	languages.each do |style, list|
		new_hash.each do |name, attributes|
			attributes[:style].push(style) if list.include?(name)
		end	
	end	
	new_hash
end