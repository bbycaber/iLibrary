class BagsController < ApplicationController
  before_action :set_bag, only: [:show, :edit, :update, :destroy]

  def index
         bags = Bag.all  
      
  end


  def show
  end


  def new
    @bag = Bag.new
  end


  def edit
  end

  def add_resource resourse


  end



  def create

  end

  def update
    respond_to do |format|
      if @bag.update(bag_params)
        format.html { redirect_to @bag, notice: 'Bag was successfully updated.' }
      else
        format.html { render :edit }
  
      end
    end
  end


  def destroy
    @bag.destroy
    respond_to do |format|
      format.html { redirect_to bags_url, notice: 'Bag was successfully destroyed.' }

    end
  end

  private


    def set_bag
      @bag = Bag.find(params[:id])
    end

 
    def bag_params
      params.require(:bag).permit(:student_id)
    end
end
