# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

%w(animation classique fiction grands_enjeux femmes_au_cinema peuples_autochtones).each do |genre|
  Genre.create(:title => genre)
end

@genres = Genre.all

(1..5).each do
  Documentary.create(
    :title => Faker::Lorem.sentence(3),
    :genres => [@genres[rand(@genres.count)]],
    :short_synopsis => Faker::Lorem.paragraph,
    :long_synopsis => Faker::Lorem.paragraph(3),
    :backers => rand(200),
    :expired_at => 1200,
    :creator => Faker::Name.name,
    :percent_funded => rand(100),
    :city => Faker::Address.city,
    :budget => rand(10000..500000),
    :purpose => Faker::Lorem.paragraph(3),
    :thumbnail_url => "",
    :pitch_video_url => ""
  )
end
