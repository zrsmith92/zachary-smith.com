class PagesController < ApplicationController

	def home
	end

	def portfolio
		@portfolio_items = PortfolioItem.all
		
		unless params[:id].nil?
			@portfolio_item = PortfolioItem.find(params[:id])
		end
	end

	def contact
		unless params[:commit].nil?
			entry = ContactEntry.new({
				:name => params[:name],
				:email => params[:email],
				:company => params[:company],
				:message => params[:message]
			})

			if entry.save
				Notifier.new_contact(entry).deliver
				@success = 'Thanks for contacting me! I\'ll be in touch soon.'
			else
				@errors = entry.errors
			end
		end
	end

end