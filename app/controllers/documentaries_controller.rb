class DocumentariesController < ApplicationController
  def index
    @documentaries = Documentary.all
  end

  def new
  end
end