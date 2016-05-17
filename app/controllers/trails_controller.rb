class TrailsController < ApplicationController
  def index
    render :index, locals: { trails: Trail.all }
  end
end
