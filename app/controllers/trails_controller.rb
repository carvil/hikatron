class TrailsController < ApplicationController
  def show
    render :show, locals: { trail: trail }
  end

  def index
    render :index, locals: { trails: TrailsDecorator.new(Trail.all) }
  end

  private

  def trail
    Trail.friendly.find(params[:id]).decorate
  end
end
