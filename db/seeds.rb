# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client = Client.new(name: 'ABC Industries', father_name: 'John Doe', phone: '00123456789', email: 'abc@example.com', date_of_birth: '7/8/1992', address: 'Mulholland Drive, Hollywood', city: 'Los Angeles', pin_zip: '90077', state: 'California', country: "US", notes: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
client.save

client = Client.new(name: 'Antares Corp.', father_name: 'Tricia McMilan', phone: '9876543210', email: 'antares@example.com', date_of_birth: '7/8/1992', address: 'Santa Monica', city: 'Los Angeles', pin_zip: '95321', state: 'California', country: "US", notes: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
client.save

client = Client.new(name: 'Betelgeuse Inc.', father_name: 'Arthur Dent', phone: '5683456789', email: 'betelgeuse@example.com', date_of_birth: '7/8/1992', address: 'Pacific Coast', city: 'Los Angeles', pin_zip: '90077', state: 'California', country: "US", notes: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
client.save


fee = Fee.new(details: 'Consultation', amount: 456.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Document Preparation', amount: 587.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Jury Selection', amount: 852.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Document Preparation', amount: 474.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Consultation', amount: 498.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Motion Filing', amount: 447.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Consultation', amount: 456.34, client_id: 1)
fee.save

fee = Fee.new(details: 'Document Preparation', amount: 587.34, client_id: 2)
fee.save

fee = Fee.new(details: 'Jury Selection', amount: 852.34, client_id: 2)
fee.save

fee = Fee.new(details: 'Document Preparation', amount: 474.34, client_id: 2)
fee.save

fee = Fee.new(details: 'Consultation', amount: 498.34, client_id: 3)
fee.save

fee = Fee.new(details: 'Motion Filing', amount: 447.34, client_id: 3)
fee.save

legal_case = Lawsuit.new(case_number: "WPA 232", case_type: "Writ Petition", court_name: "Superior Court of California", location: "Los Angeles", filing_date: '2/2/2015', client_id: 1, opposite_party: 'Umbrella Corporation', case_details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
legal_case.save

legal_case = Lawsuit.new(case_number: "MTG 243", case_type: "Specific Relief", court_name: "Superior Court of California", location: "Los Angeles", filing_date: '8/5/2015', client_id: 1, opposite_party: 'Solar Inc.', case_details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
legal_case.save

legal_case = Lawsuit.new(case_number: "CAL 852", case_type: "Liquidation Proceeding", court_name: "Superior Court of California", location: "Los Angeles", filing_date: '15/10/2015', client_id: 1, opposite_party: 'Martian Inc.', case_details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
legal_case.save

legal_case = Lawsuit.new(case_number: "CRT 232", case_type: "Criminal Trial", court_name: "Superior Court of California", location: "Los Angeles", filing_date: '28/12/2015', client_id: 1, opposite_party: 'Jovian Corporation', case_details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
legal_case.save

legal_case = Lawsuit.new(case_number: "WPA 449", case_type: "Writ Petition", court_name: "Superior Court of California", location: "Los Angeles", filing_date: '2/2/2015', client_id: 2, opposite_party: 'Umbrella Corporation', case_details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
legal_case.save

legal_case = Lawsuit.new(case_number: "MTG 961", case_type: "Specific Relief", court_name: "Superior Court of California", location: "Los Angeles", filing_date: '8/5/2015', client_id: 2, opposite_party: 'Solar Inc.', case_details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
legal_case.save

legal_case = Lawsuit.new(case_number: "CAL 746", case_type: "Liquidation Proceeding", court_name: "Superior Court of California", location: "Los Angeles", filing_date: '15/10/2015', client_id: 2, opposite_party: 'Martian Inc.', case_details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
legal_case.save

legal_case = Lawsuit.new(case_number: "CRT 321", case_type: "Criminal Trial", court_name: "Superior Court of California", location: "Los Angeles", filing_date: '28/12/2015', client_id: 3, opposite_party: 'Jovian Corporation', case_details: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
legal_case.save


update = Update.new(lawsuit_id: 1, title: "Finibus Bonorum et Malorum", details: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur." )
update.save

update = Update.new(lawsuit_id: 1, title: "Consectetur adipiscing elit", details: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur." )
update.save

update = Update.new(lawsuit_id: 1, title: "Lorem ipsum dolor sit", details: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur." )
update.save

update = Update.new(lawsuit_id: 1, title: "Doloremque laudantium, totam rem", details: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur." )
update.save

update = Update.new(lawsuit_id: 2, title: "Quis autem vel eum iure reprehenderit", details: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur." )
update.save

update = Update.new(lawsuit_id: 2, title: "Ut enim ad minima veniam", details: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur." )
update.save

update = Update.new(lawsuit_id: 2, title: "Neque porro quisquam est", details: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur." )
update.save

update = Update.new(lawsuit_id: 3, title: "Excepteur sint occaecat cupidatat", details: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur." )
update.save

document = Document.new(name: 'Affidavit of Plaintiff', url: 'https://www.dropbox.com', lawsuit_id: 1)
document.save

document = Document.new(name: 'Plaint', url: 'https://www.dropbox.com', lawsuit_id: 1)
document.save

document = Document.new(name: 'Detachment Motion', url: 'https://www.dropbox.com', lawsuit_id: 1)
document.save

document = Document.new(name: 'Written Statement', url: 'https://www.dropbox.com', lawsuit_id: 1)
document.save

document = Document.new(name: 'Deposition', url: 'https://www.dropbox.com', lawsuit_id: 2)
document.save

document = Document.new(name: 'Witness Statement', url: 'https://www.dropbox.com', lawsuit_id: 2)
document.save

document = Document.new(name: 'Affidavit', url: 'https://www.dropbox.com', lawsuit_id: 2)
document.save

admin_user = User.new(email: 'admin@example.com', password: 'foobar', password_confirmation: 'foobar', name: 'Admin User', father_name: 'Admin User Father', job_title: 'Owner', date_of_birth: '01/01/1955', phone: '987654321', address: 'Sunset Boulevard', city: 'Los Angeles', pin_zip: '94568', state: 'CA', country: 'US', admin: true, enabled: true, notes: 'Quis autem vel eum iure reprehenderit. Quis autem vel eum iure reprehenderit.')
admin_user.save

normal_user = User.new(email: 'normal_user@example.com', password: 'foobar', password_confirmation: 'foobar', name: 'Normal User', father_name: 'Normal User Father', job_title: 'Senior Associate', date_of_birth: '01/01/1975', phone: '123456789', address: 'La Brea Avenue', city: 'Los Angeles', pin_zip: '94568', state: 'CA', country: 'US', admin: false, enabled: true, notes: 'Quis autem vel eum iure reprehenderit. Quis autem vel eum iure reprehenderit.')
normal_user.save
