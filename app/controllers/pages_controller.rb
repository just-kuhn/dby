class PagesController < ApplicationController
  def home
    @request = Request.new
  end

  def about
  end
end
