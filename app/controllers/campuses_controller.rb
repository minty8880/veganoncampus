class CampusesController < ApplicationController

  def index
    @campuses = Campus.all
  end

  def show
    @campus = Campus.find(params[:id])
  end
end
