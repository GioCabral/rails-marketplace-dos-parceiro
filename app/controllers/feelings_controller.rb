class FeelingsController < ApplicationController

  def index
    @feelings = Feelings.all
  end
end
