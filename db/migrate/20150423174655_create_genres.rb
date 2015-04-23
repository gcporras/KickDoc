class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :title

      t.timestamps null: false
    end

    %w(animation classique fiction grands_enjeux femmes_au_cinema peuples_autochtones).each do |genre|
      Genre.create(:title => genre)
    end

  end
end
