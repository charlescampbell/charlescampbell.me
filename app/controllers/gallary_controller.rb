# frozen_string_literal: true

class GallaryController < ApplicationController
  before_action :set_gallary, only: %i[show edit update destroy]
  layout 'backend'

  def index; end

  def backend
    @images = Gallary.all

    render 'backend/gallary/index'
  end

  def history
    @images = Gallary.where(category: 'portfolio')

    render 'frontend/gallary/history'
  end

  def new
    @gallary = Gallary.new

    render 'backend/gallary/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    render 'backend/gallary/edit'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    render 'frontend/gallary/image'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @gallary = Gallary.new(gallary_params)

    respond_to do |format|
      if @gallary.save
        format.html do
          redirect_to backend_gallary_path, notice: 'gallary created'
        end
      else
        format.html do
          redirect_to backend_gallary_path, notice: 'failed to create'
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @gallary.update(gallary_params)
        format.html do
          redirect_to backend_gallary_path, notice: 'gallary updated'
        end
      else
        format.html do
          redirect_to backend_gallary_path, notice: 'failed to update'
        end
      end
    end
  end

  def destroy
    @gallary.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_gallary_path, notice: 'gallary removed'
      end
    end
  end

  private

  def set_gallary
    @gallary = Gallary.find(params[:id])
  end

  def gallary_params
    params.require(:gallary).permit(:name, :description, :image, :category)
  end
end
