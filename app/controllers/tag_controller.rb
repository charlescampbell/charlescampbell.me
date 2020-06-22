# frozen_string_literal: true

class TagController < ApplicationController
  def new
    @tag = Tag.new

    render 'backend/tag/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @tag = Tag.new(tag_params)

    respond_to do |format|
      if @tag.save
        format.html { redirect_to backend_education_path, notice: 'tag created' }
      else
        format.html { redirect_to backend_education_path, notice: 'error' }
      end
    end
  end

  def destroy
    @tag = Tag.find(params[:id])

    @tag.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_education_path, notice: 'tag removed'
      end
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:education_id, :tag, :colour)
  end
end
