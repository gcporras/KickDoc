class DocumentariesController < ApplicationController
  def index
    @documentaries = Documentaries.all
  end
end