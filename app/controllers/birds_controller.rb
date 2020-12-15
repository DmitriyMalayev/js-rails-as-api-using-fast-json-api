class BirdsController < ApplicationController
  def index 
    birds = Bird.all 
    binding.pry 
    render json: BirdSerializer.new(birds) 
  end
end
