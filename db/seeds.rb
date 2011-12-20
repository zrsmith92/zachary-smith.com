# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

PortfolioItem.delete_all

portfolio_items = PortfolioItem.create([
	{
		title: 'NU Shuttle iOS App',
		description: 'The NU Shuttle App was a project developed by the student development team <em>NU Mobile</em>. We set out to make a cross platform app for display information about Northwestern\'s shuttle service. I was the primary developer for the native iOS version of this app.',
		href: nil,
		from: Date.parse('01-04-2011'),
		to: nil
	}
])