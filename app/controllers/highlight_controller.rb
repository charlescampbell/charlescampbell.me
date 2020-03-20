# frozen_string_literal: true

class HighlightController < ApplicationController
  before_action :set_highlight, only: %i[show edit update destroy]

  def new
    @highlight = Highlight.new

    render 'backend/highlights/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    render 'backend/highlights/edit'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @highlight = Highlight.new(highlight_params)

    respond_to do |format|
      if @highlight.save
        format.html { redirect_to backend_path, notice: 'highlight created' }
      else
        format.html { redirect_to backend_path, notice: 'failed to create' }
      end
    end
  end

  def update
    respond_to do |format|
      if @highlight.update(highlight_params)
        format.html { redirect_to backend_path, notice: 'highlight updated' }
      else
        format.html { redirect_to backend_path, notice: 'failed to update' }
      end
    end
  end

  def destroy
    @highlight.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_path, notice: 'highlight removed'
      end
    end
  end

  private

  def set_highlight
    @highlight = Highlight.find(params[:id])
  end

  def highlight_params
    params.require(:highlight).permit(
      :title, :organisation, :start_date, :end_date, :description, :url
    )
  end
end
