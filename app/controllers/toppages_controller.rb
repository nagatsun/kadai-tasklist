class ToppagesController < ApplicationController
  
  def index
    @tasks = Task.order(id: :desc).page(params[:page]).per(7)
  end
end