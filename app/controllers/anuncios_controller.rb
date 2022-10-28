class AnunciosController < ApplicationController
  def index
    @anuncios = Anuncio.where(user_id: current_user.id)
  end

  def new

  end

  def create

  end
end
