# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

page1 = Page.create(title: 'Page One', modules: ['text_block', 'text_block', 'text_block'])

page2 = Page.create(title: 'Page Two', modules: ['text_block', 'text_block', 'text_block'])

page3 = Page.create(title: 'Page Three', modules: ['text_block', 'text_block', 'text_block'])

page1.text_blocks.create(header: 'Header One', content: 'For Science you monster')

page1.text_blocks.create(header: 'Header Two', content: 'I\'m not Zero, I\'m Santa.')

page1.text_blocks.create(header: 'Header Three', content: 'Why so serious?')

page2.text_blocks.create(header: 'Heading One', content: 'For Science you monster')

page2.text_blocks.create(header: 'Heading Two', content: 'I\'m not Zero, I\'m Santa.')

page2.text_blocks.create(header: 'Heading Three', content: 'Why so serious?')

page3.text_blocks.create(header: 'Head upwards One', content: 'For Science you monster')

page3.text_blocks.create(header: 'Head upwards Two', content: 'I\'m not Zero, I\'m Santa.')

page3.text_blocks.create(header: 'Head upwards Three', content: 'Why so serious?')