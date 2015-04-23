class DocumentaryHasGenre < ActiveRecord::Base
  belongs_to :documentary
  belongs_to :genre
end
