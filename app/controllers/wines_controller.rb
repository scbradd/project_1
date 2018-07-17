class WinesController < ApplicationController

def index
  @wines = Wine.all
end

#new
def new
  @wine = Wine.new
end

def show
    @wine = Wine.find params[:id]
  end


  #create - allows the user to post their wines
  def create
    wine = Wine.new
    wine.color = params[:color]
    wine.name = params[:name]
    wine.region = params[:region]
    wine.image = params[:image]
    wine.save
    redirect_to wines_path
  end


  def edit
    @wine = Wine.find params[:id]
  end

  def post
    wine = Wine.find params[:id]
    wine.color = params[:color]
    wine.name = params[:name]
    wine.region = params[:region]
    wine.image = params[:image]
  redirect_to wines_path
  end

  #delete
  def destroy
    @wine = Wine.find params[:id]
    @wine.destroy
    redirect_to wines_path
  end
end
