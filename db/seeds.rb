# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

%w(animated_film children_film documentary experimental_film fiction interview).each do |genre|
  Genre.create(:title => genre)
end

@genres = Genre.all

suckr = ImageSuckr::GoogleSuckr.new

(1..5).each do
  Documentary.create(
    :title => Faker::Lorem.sentence(3),
    :genres => [@genres[rand(@genres.count)]],
    :short_synopsis => Faker::Lorem.paragraph,
    :long_synopsis => Faker::Lorem.paragraph(3),
    :backers => rand(200),
    :expired_at => DateTime.now + 30,
    :creator => Faker::Name.name,
    :percent_funded => rand(100),
    :city => Faker::Address.city,
    :budget => rand(10000..500000),
    :purpose => Faker::Lorem.paragraph(3),
    :thumbnail_url => suckr.get_image_url,
    :pitch_video_url => ""
  )
end
