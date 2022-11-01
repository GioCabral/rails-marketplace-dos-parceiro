class FeelingsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = <<~SQL
        feelings.name @@ :query
      SQL
      @feelings = Feeling.where(sql_query, query: "%#{params[:query]}%")
    else
      @feelings = Feeling.all
    end
    @feelings = @feelings.reject do |feeling|
      feeling.order
    end
  end

  def show
    @feeling = Feeling.find(params[:id])
  end

  def new
    @feeling = Feeling.new
  end

  def edit
    @feeling = Feeling.find(params[:id])
  end

  def update
    @feeling = Feeling.find(params[:id])
    if @feeling.update(set_params)
      redirect_to feeling_path(params[:id]), notice: "SHOW DE BOLA!"
    else
      render :edit, status: :unprocessable_entity
    end
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
    params.require(:feeling).permit(:name, :percentage, :photo)
  end
end
