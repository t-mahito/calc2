class CalcsController < ApplicationController

  def index

  end

  def new
   @calc = Calc.new
  end

  def create
   @calc = Calc.new(calc_params)
   unless @calc.save
    render :new
   end

  end

  def destroy
    calc = Calc.find(params[:id])
    calc.destroy
    redirect_to root_path
  end

  
  private
   def calc_params
    params.require(:calc).permit(:input)
   end 
end
