# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all

allUsers = {
    "users": [
        {
            username:"chris123",
            password:"example",
            email_address:"chris@example.com",
            zip_code:"75216"
        },
        {
            username:"alex123",
            password:"example",
            email_address:"alex@example.com",
            zip_code:"75219"
        },
    ]
}

allCities = {
    "cities": [
        {
            residential: true
            commercial: false
            zip_code: 75216
            city_name: "DALLAS"
            state_abbrev: "TX"
            user_id: 1
        },
        {
            residential: true
            commercial: false
            zip_code: 75219
            city_name: "DALLAS"
            state_abbrev: "TX"
            user_id: 2
        },
        {
            residential: false
            commercial: true
            zip_code: 75216
            city_name: "DALLAS"
            state_abbrev: "TX"
            user_id: 1
        },
    ]
}

allUsers[:users].each do |user|
    User.create(user)
end

allCities[:cities].each do |city|
    City.create(city)
end