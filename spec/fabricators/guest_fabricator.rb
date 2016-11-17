Fabricator(:guest) do
  name { Faker::Name.name }
  email { Faker::Internet.email }
  addons { rand(5) }
  language { (rand(2) == 1) ? 'french' : 'english' }
end
