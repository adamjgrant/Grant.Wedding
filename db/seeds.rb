# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }]
#   Mayor.create(name: 'Emanuel', city: cities.first)
[
  {
    title: "About us",
    key: "aboutus"
  },
  {
    title: "Travel",
    key: "travel"
  },
  {
    title: "Stay",
    key: "stay"
  },
  {
    title: "Schedule",
    key: "schedule"
  },
  {
    title: "Registry",
    key: "registry"
  }
].each do |page|
  Page.create(title: page[:title])
end
