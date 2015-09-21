class BackerkatsController < ApplicationController
  def index
    @backerkats = Backerkat.all.to_a
  end

  def create
    name = params[:backerkat][:name]
    email = params[:backerkat][:email]
    Backerkat.create(name: name, email: email)
    redirect_to backerkats_path
  end

  def destroy
    id = params[:id]
    Backerkat.find(id).destroy
    redirect_to backerkats_path
  end
end