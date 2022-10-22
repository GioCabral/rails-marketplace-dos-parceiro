class FeelingsController < ApplicationController

  def index
    @feelings = Feeling.all
  end

  def show
    @feeling = Feeling.find(params[:id])
  end

  def new
    @feeling = Feeling.new
  end

  def create
    @feeling = Feeling.new(set_params)
    @feeling.user_id = current_user.id
    if @feeling.save
      redirect_to feelings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_params
    params.require(:feeling).permit(:name, :price)
  end
end
