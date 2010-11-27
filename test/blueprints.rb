require "machinist/active_record"

Sham.define do
  name { Faker::Name.name }
  email { Faker::Internet.user_name + "@example.org" }
end

Project.blueprint do
  name { Sham.name }
  max_builds { 3 }
  recipients { Sham.email }
end
