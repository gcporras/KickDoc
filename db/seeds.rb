# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

%w(animated_film children_film documentary experimental_film fiction interview).each do |genre|
  Genre.create(:title => genre)
end

@genres = Genre.all

suckr = ImageSuckr::GoogleSuckr.new

(1..20).each do
  Documentary.create(
    :title => Faker::Lorem.sentence(3),
    :genres => [@genres[rand(@genres.count)]],
    :short_synopsis => Faker::Lorem.paragraph(3),
    :long_synopsis => Faker::Lorem.paragraph(30),
    :backers => rand(200),
    :expired_at => DateTime.now + 30,
    :creator => Faker::Name.name,
    :percent_funded => rand(100),
    :city => Faker::Address.city,
    :budget => rand(10000..500000),
    :purpose => Faker::Lorem.paragraph(3),
    :thumbnail_url => suckr.get_image_url,
    :pitch_video_url => "https://www.nfb.ca/film/age_is_no_barrier/embed/player",
    :approved => [true, false].sample,
    :status => [:new, :fund, :completed].sample
  )
end

Documentary.create(
    :title => "Hackaton the documenrary",
    :genres => [@genres[rand(@genres.count)]],
    :short_synopsis => "This is a great documentary about the hackaton canayan culture",
    :long_synopsis => "This is a great great Awsome documentary about the hackaton canayan culture",
    :backers => rand(200),
    :expired_at => DateTime.now + 30,
    :creator => Faker::Name.name,
    :percent_funded => rand(100),
    :city => Faker::Address.city,
    :budget => rand(10000..500000),
    :purpose => "To give voice to the hackers",
    :thumbnail_url => "http://blog.monitis.com/wp-content/uploads/2014/09/Hackathon-2.jpg",
    :pitch_video_url => "https://player.vimeo.com/video/125937809",
    :approved => true,
    :status => :completed
)
