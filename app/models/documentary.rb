class Documentary < ActiveRecord::Base
  has_many :genres, :through => :documentary_has_genres
  has_many :documentary_has_genres
end
