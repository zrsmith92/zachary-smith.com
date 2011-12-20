module PagesHelper

	def date_range(from, to)

		if ( from.nil? )
			nil
		elsif ( to.nil? )
			from.strftime "%B %Y"
		else
			"#{ from.strftime('%B %Y') } - #{ to.strftime('%B %Y') }";
		end

	end

end