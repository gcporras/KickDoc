class CreateDocumentaries < ActiveRecord::Migration
  def change
    create_table :documentaries do |t|
      t.string :title
      t.text :short_synopsis
      t.text :long_synopsis
      t.integer :backers
      t.datetime :expired_at
      t.string :creator
      t.integer :percent_funded
      t.string :city
      t.integer :budget
      t.text :purpose
      t.string :thumbnail_url
      t.string :pitch_video_url


      t.timestamps null: false
    end

    create_table :documentary_has_genres do |t|
      t.integer :documentary_id
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
