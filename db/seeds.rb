# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
region_list = [ "Herson" ,"Lvov" ,"Odessa" ,"Kiev" ]
city_list = [ "Herson" ,"Lvov" ,"Odessa" ,"Kiev" ]
region_id_list = [4 , 5, 6, 7]
city_id_list = [1, 2, 3, 4]
name_list = ['lorem', 'ipsum', 'bored', 'lored']
century_list =['ipsum', 'lorem', 'open', 'kored']
@about_text = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa'

region_list.each do |name|
	Region.create( name: name )
end

4.times do |i|
	City.create( name: city_list[i], region_id: region_id_list[i] )
	Stone.create(name: name_list[i], century: century_list[i], region_id: region_id_list[i], city_id: city_id_list[i])
	Wooden.create(name: name_list[i], century: century_list[i], region_id: region_id_list[i], city_id: city_id_list[i])
	Castle.create(name: name_list[i], century: century_list[i], region_id: region_id_list[i], city_id: city_id_list[i])
	Palace.create(name: name_list[i], century: century_list[i], region_id: region_id_list[i], city_id: city_id_list[i])
	Nature.create(name: name_list[i], century: century_list[i], region_id: region_id_list[i], city_id: city_id_list[i])

	OtherArchitecture.create(name: name_list[i], century: century_list[i], region_id: region_id_list[i], city_id: city_id_list[i])
	Museum.create(name: name_list[i], century: century_list[i], region_id: region_id_list[i], city_id: city_id_list[i])
	Tradition.create(name: name_list[i], about: @about_text, region_id: region_id_list[i])
	Route.create(name: name_list[i], about: @about_text, region_id: region_id_list[i])
	Person.create(name: name_list[i], about: @about_text)
end