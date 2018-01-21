class OrganizersController < ApplicationController
  def create
    organizer = Organizer.new(organizer_params)
    if organizer.save
      render :json => organizer
    else
      render :json => organizer.errors, :status => :unprocessable_entity
    end
  end

  def destroy
    organizer = Organizer.find(params[:id])
    organizer.destroy
    render json:organizer
  end

  def index
    render :json => Organizer.all
  end

  def show
    render :json => Organizer.find(params[:id])
  end

  def update
    organizer = Organizer.find(params[:id])
    if organizer.update_attributes(organizer_params)
      render :json => organizer
    else
      render :json => organizer.errors, :status => :unprocessable_entity
    end
  end

  private
  def organizer_params
    params.require(:organizer).permit()
  end
end
