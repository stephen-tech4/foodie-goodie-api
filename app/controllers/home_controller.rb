class HomeController < ApplicationController
  def index
    render json: {result: "OK"}
  end
end