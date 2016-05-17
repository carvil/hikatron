class TrailsController < ApplicationController
  def index
    render :index, locals: { trails: TrailsDecorator.new(Trail.all) }
  end
end
