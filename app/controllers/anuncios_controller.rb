class AnunciosController < ApplicationController
  def index
    @feelings = Feeling.where(user_id: current_user.id)
  end
end
