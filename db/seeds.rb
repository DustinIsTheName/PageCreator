# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TextBlock.create(header: '')




Page.create(title: 'Page One', modules: [{'text_block' => 1}, {'text_block' => 2}, {'text_block' => 3}])

Page.create(title: 'Page Two', modules: [{'text_block' => 3}, {'text_block' => 1}, {'text_block' => 2}])

Page.create(title: 'Page Three', modules: [[{'text_block' => 2}, {'text_block' => 3}, {'text_block' => 1}])