class HappeningsController < ApplicationController
  def create
    happening = Happening.new(happening_params)
    if happening.save
      render :json => happening
    else
      render :json => happening.errors, :status => :unprocessable_entity
    end
  end

  def destroy
    happening = Happening.find(params[:id])
    happening.destroy
    render json:happening
  end

  def index
    render :json => Happening.all
  end

  def show
    render :json => Happening.find(params[:id])
  end

  def update
    happening = Happening.find(params[:id])
    if happening.update_attributes(happening_params)
      render :json => happening
    else
      render :json => happening.errors, :status => :unprocessable_entity
    end
  end

  private
  def happening_params
    params.require(:happening).permit(:location, :date)
  end

end
