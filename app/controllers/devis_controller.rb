class DevisController < ApplicationController
  def new
    @devis = Devi.new
  end

  def create
    @devis = Devi.new(params[:devi])
    @devis.request = request
    if @devis.deliver
      flash.now[:error] = nil
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

end
