class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # model
    cheese = Cheese.find_by(id: params[:id])
    # view
    render json:cheese
  end

end
