require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/phone')

get("/") do
  @contacts = Contact.all()
  erb(:index)
end

post("/contacts") do
  name = params.fetch("contact")
  Contact.new(name).add()
  @contacts = Contact.all()
  erb(:index)
end

post('/numbers') do
  number = params.fetch('number')
  type = params.fetch('type')
  @phone = Phone.new(number, type)
  @contact = Contact.find(params.fetch('contact_id').to_i())
  @contact.add_number(@phone)
  erb(:index)
end

get('/numbers/:id') do
  @number = Contact.find(params.fetch('id'))
  erb(:numbers)
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:contacts)
end
