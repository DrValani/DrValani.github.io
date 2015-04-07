module MyFilters
	module LatticeDimensionFilter
	   def latticeDimension(input)
		value = ""
		input.split(" ").each{ |word|
			if word[0].eql?("_") then
				value += "<strong>#{ word.delete "_" }</strong>"
			else
				value += word
			end
		}
	   	value
	   end	   
	end
end

Liquid::Template.register_filter(MyFilters::LatticeDimensionFilter)
