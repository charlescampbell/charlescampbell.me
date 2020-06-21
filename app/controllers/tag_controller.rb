# frozen_string_literal: true

class TagController < ApplicationController
  before_action :set_tag, only: %i[edit update destroy]

  def new
    @tag = Tag.new

    render 'backend/tag/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    render 'backend/tag/edit'
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

  def update
    respond_to do |format|
      if @tag.update(tag_params)
        format.html { redirect_to backend_education_path, notice: 'tag updated' }
      else
        format.html { redirect_to backend_education_path, notice: 'failed to update' }
      end
    end
  end

  def destroy
    @tag.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_education_path, notice: 'tag removed'
      end
    end
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:education_id, :tag, :colour)
  end
end
