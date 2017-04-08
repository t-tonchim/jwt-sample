require 'faker'

Post.destroy_all
User.destroy_all

Faker::Config.locale = :ja

User.create!(
  name: Faker::Name.name,
  email: 'test@example.com',
  password: 'test123',
  password_confirmation: 'test123'
)

10.times do
  Post.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph)
end
