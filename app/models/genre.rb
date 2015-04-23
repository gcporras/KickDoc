class Genre < ActiveRecord::Base
  has_many :documentaries, :through => :documentary_has_genres
  has_many :documentary_has_genres
end
