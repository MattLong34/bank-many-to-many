# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.destroy_all
Member.destroy_all
Bank.destroy_all

matt = Member.create(name: "Matt Long", email: "mlong@gmail.com")
derek = Member.create(name: "Derek Turner", email: "dturnernotike@gmail.com")
tony = Member.create(name: "Tony Kim", email: "tkimishim@gmail.com")

chase = Bank.create(name: "Chase")
wells_fargo = Bank.create(name: "Wells Fargo")

# the below two lines are the same, either way is fine
# Account.create(number: 456456, member: matt, bank: chase)
matt.accounts.create(number: 456456, bank: wells_fargo)
chase.accounts.create(number: 383838, member: derek)
tony.accounts.create(number: 229384, bank: chase)