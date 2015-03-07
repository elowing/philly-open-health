# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#The following are just for easy demo purposes, and are not 'true' seed data. Newbie mode. :-)

10.times do |n|
   DataSource.create(name: "Big Organization #{n}", url: "http://www.hivphilly.org")
end

10.times do |n|
    DataSet.create title: "Test Document #{n}", description: "Test Doc #{n}", data_source_id: n, date_published: "03/2015", collection_date_range: "01/2015-02/2015", geographic_detail: "county, state"
end
