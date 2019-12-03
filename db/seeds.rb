# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

highschools = Highschool.create([{name: 'Jubilee Christian Academy', address: '1603 - 1607 E. Rodriguez Avenue, Quezon City'}, 
{name: 'Grace Christian College', address: '30 Grace Ave, Balintawak, Quezon City, 1100 Metro Manila'},
{name: 'Miriam College High School', address: 'Mangyan Rd, Quezon City, 1800 Metro Manila'},
{name: 'UP Integrated School', address: 'A. Ma. Regidor Street, Quirino Avenue, Diliman, Quezon City, 1101 Metro Manila'},
{name: 'Philippine Science High School Main Campus', address: 'Agham Rd, Diliman, Quezon City, Metro Manila'},
{name: 'Xavier School', address: '64 Xavier, San Juan, 1500 Metro Manila'},
{name: 'Ateneo de Manila University', address: 'President Carlos P. Garcia Ave, Quezon City, 1108 Metro Manila'}])

testcenters = Testcenter.create([{name: 'Diliman'},
{name: 'Baguio'},
{name: 'Manila'},
{name: 'Los Banos'},
{name: 'Mindanao'},
{name: 'Cebu'},
{name: 'Tacloban College'}])

students = Student.create([{name: 'Engelberg See', sex: 'Male', dateofbirth: '10-07-1998', address: '40-A Pao Street Barangay Saint Peter, Quezon City', highschool_id: 'Jubilee Christian Academy', testcenter_id: 'Diliman'},
{name: 'Gene Tan', sex: 'Female', dateofbirth: '12-02-2014', address: 'Unit 2 #65 Monte de Piedad St., Cubao, Q.C.', highschool_id: highschools.first, testcenter_id: testcenters.first}
{name: 'Renne Alcazar', sex: 'Female', dateofbirth: '10-16-2019', address: 'Fordham Street Barangay Saint Ignatius', highschool_id: highschools.first, testcenter_id: testcenters.first}

])

