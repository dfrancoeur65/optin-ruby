class RsvpsController < ApplicationController
  def create
    rsvp = Rsvp.new(rsvp_params)
    if rsvp.save
      render :json => rsvp
    else
      render :json => rsvp.errors, :status => :unprocessable_entity
    end
  end

  def destroy
    rsvp = Rsvp.find(params[:id])
    rsvp.destroy
    render json:rsvp
  end

  def index
    render :json => Rsvp.all
  end

  def show
    render :json => Rsvp.find(params[:id])
  end

  def update
    rsvp = Rsvp.find(params[:id])
    if rsvp.update_attributes(rsvp_params)
      render :json => rsvp
    else
      render :json => rsvp.errors, :status => :unprocessable_entity
    end
  end

  private
  def rsvp_params
    params.require(:rsvp).permit(:response, :guest)
  end
end
