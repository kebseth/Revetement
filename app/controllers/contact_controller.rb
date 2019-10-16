class ContactController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @marker =
      {
        lat: 48.1846,
        lng: -1.6600399999999809
      }
  end
end
