# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client = Client.new(name: 'ABC Industries', father_name: 'John Doe', phone: '00123456789', email: 'abc@example.com', date_of_birth: '7/8/1992', address: 'Mulholland Drive, Hollywood', city: 'Los Angeles', pin_zip: '90077', state: 'California', country: "US", notes: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
client.save


fee = Fee.new(details: 'Sample Fees 1', amount: 456.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Sample Fees 2', amount: 587.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Sample Fees 3', amount: 852.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Sample Fees 4', amount: 474.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Sample Fees 5', amount: 498.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Sample Fees 6', amount: 447.34, client_id: 1)
fee.save