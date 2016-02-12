require "#{Rails.root}/lib/apis/congress.rb"

class HomeController < ApplicationController
  def index
  end

  def search
  	@i = 0
  	@results = APIS::Congress.search_senators(params[:query])
  	render 'index'
  end
end
