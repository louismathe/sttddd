Partnership.destroy_all
University.destroy_all
Address.destroy_all
Flat.destroy_all
City.destroy_all
Operator.destroy_all
Bank.destroy_all
Country.destroy_all

puts "Creating Countries"
fr = Country.create!(name: "France")
us = Country.create!(name: "USA")
uk = Country.create!(name: "UK")

puts "Creating Banks"
bankfr1 = Bank.create!(name: "bank 1 fr", country: fr)
bankfr2 = Bank.create!(name: "bank 2 fr", country: fr)
bankus1 = Bank.create!(name: "bank 1 us", country: us)
bankus2 = Bank.create!(name: "bank 2 us", country: us)
bankuk1 = Bank.create!(name: "bank 1 uk", country: uk)
bankuk2 = Bank.create!(name: "bank 2 uk", country: uk)

puts "Creating Operators"
operatorfr1 = Operator.create!(name: "operator 1 fr", country: fr)
operatorfr2 = Operator.create!(name: "operator 2 fr", country: fr)
operatorus1 = Operator.create!(name: "operator 1 us", country: us)
operatorus2 = Operator.create!(name: "operator 2 us", country: us)
operatoruk1 = Operator.create!(name: "operator 1 uk", country: uk)
operatoruk2 = Operator.create!(name: "operator 2 uk", country: uk)

puts "Creating Cities"
stanford = City.create!(name: "Stanford")
paris = City.create!(name: "Paris")
cambridgeus = City.create!(name: "Cambridge")
cambridgeuk = City.create!(name: "Cambridge")

puts "Creating Flats"
flatfr1 = Flat.create!(price: 100, city: paris)
flatfr2 = Flat.create!(price: 200, city: paris)
flatus1 = Flat.create!(price: 100, city: stanford)
flatus2 = Flat.create!(price: 200, city: stanford)
flatuk1 = Flat.create!(price: 100, city: cambridgeuk)
flatuk2 = Flat.create!(price: 200, city: cambridgeuk)


puts "Creating Addresses"
address_stanford = Address.create!(country: us, city: stanford )
address_hec = Address.create!(country: fr, city: paris )
address_harvard = Address.create!(country: us, city: cambridgeus )
address_cambridge = Address.create!(country: uk, city: cambridgeuk )

puts "Creating Universities"
University.create!(name: "Stanford", address: address_stanford)
University.create!(name: "HEC", address: address_hec)
University.create!(name: "Harvard", address: address_harvard)
University.create!(name: "Cambridge", address: address_cambridge)


a = Partnership.new(university: University.first)
a.partner = University.second
a.save!

a = Partnership.new(university: University.first)
a.partner = University.third
a.save!

a = Partnership.new(university: University.first)
a.partner =  University.fourth
a.save!


# University.first.partners
# University.first.partners.first.address
