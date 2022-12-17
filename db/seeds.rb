# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rianna_account = Account.create!(
  account_number: "123456789",
  account_type: "checking",
  available_balance: "80000",
  total_balance: "100000"
)

User.create!(
  first_name: "Rianna",
  last_name: "Castro",
  username: "riannac",
  email: "rianna@example.com",
  account: rianna_account
)