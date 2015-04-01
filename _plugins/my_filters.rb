module MyFilters
	module HeadlineFilter
	  def headline(input)
		      "<h1>#{input}</h1>"
           end
	end

	module LatticeDimensionFilter
	   def latticeDimension(input)
		"<strong>5</strong>x5xN"
	   end	   
	end

end

Liquid::Template.register_filter(MyFilters::HeadlineFilter)
Liquid::Template.register_filter(MyFilters::LatticeDimensionFilter)
