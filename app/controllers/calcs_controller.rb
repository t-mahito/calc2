class CalcsController < ApplicationController

  def index

  end

  def new
   @calc = Calc.new
  end

  def create
   @calc = Calc.new(calc_params)
   if @calc.save
    redirect_to root_path
   else
    render :new
   end
   
  end
  
  private
   def calc_params
    params.require(:calc).permit(:input)
   end 
end
