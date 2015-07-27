class StaticController < ApplicationController
  def index
  end

  def reder_page
    render params[:page_name]
  end
end
