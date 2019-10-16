class DevisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @devis = Devi.new
  end

  def create
    @devis = Devi.new(params[:devi])
    @devis.request = request
    if @devis.deliver
      flash.now[:error] = nil
      redirect_to root_path, notice: 'Le message a bien été envoyé'
    else
      flash.now[:error] = "Le message n'a pas été envoyé"
      render :new
    end
  end
end
