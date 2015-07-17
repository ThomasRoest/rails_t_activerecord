task :fake => :environment do 
  10.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  zipcode = Faker::Address.zip_code
  state = Faker::Address.state
  employees = Faker::Number.between(1, 650)
  city = Faker::Address.city

  Customer.create!(
    name: name, 
    email: email,
    zipcode: zipcode,
    state: state,
    employees: employees,
    city: city)
  end
end

# use rake fake