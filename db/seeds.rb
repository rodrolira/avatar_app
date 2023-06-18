avatars_data = 10.times.map do
  {
    url_image: Faker::Internet.url,
  }
end

avatars = avatars_data.map { |data| Image.create!(data) }

puts "#{avatars.count} avatars creados"

AvatarsController.class_variable_set(:@@avatars, avatars)
