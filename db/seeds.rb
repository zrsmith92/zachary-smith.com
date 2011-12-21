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
                href: 'http://nux.northwestern.edu/shuttles/ios/',
                from: Date.parse('January 04 2011'),
                to: nil,
                picture: 'nu_shuttles.png'
        },
        {
                title: 'Sunset 7',
                description: 'Sunset 7 is a luxury condominium in Perdido Key, FL. I created a wordpress site with a custom theme, as well as a few custom plugins to give the owners a personalized website for marketing their realty. Please note that this site is still under construction.',
                href: 'http://sunset7.com',
                from: Date.parse('June 15 2011'),
                to: Date.parse('January 15 2012'),
                picture: 'sunset7.png'
        },
        {
                title: 'Hound.FM',
                description: 'Hound.FM is a personal project of mine. It is a rails app that scrapes information about any music artist from as many media sources as possible. Currently the app scrapes from Last.fm, Soundcloud, and YouTube, but many more sites are planned for integration. This project is in early stages, and is not viewable anywhere. The source code is availabe on Github.',
                href: 'https://github.com/zrsmith92/hound.fm',
                from: Date.parse('November 15 2011'),
                to: nil
        }
])
