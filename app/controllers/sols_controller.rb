class SolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @sols = Sol.all
  end

  def new
    @sol = Sol.new
  end

  def create
    @sol = Sol.new(sol_params)
    save_sol
  end

  def destroy
    @sol = Sol.find(params[:id])
    if @sol.destroy
      redirect_to sols_path
    else
      render :index
    end
  end

  private

  def save_sol
    if @sol.save
      redirect_to sols_path
    else
      render :new
    end
  end

  def sol_params
    params.require(:sol).permit(:nom, :prix, :photo)
  end
end
