class WelcomeController < ApplicationController
  def index
    @genres = Genre.all
  end
end
