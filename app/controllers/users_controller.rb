class UsersController < ApplicationController
  def show
    @entry = User.find(params[:id])

    render 'entry'
  end

  def index
    @list = User.all

    render 'list'
  end
end