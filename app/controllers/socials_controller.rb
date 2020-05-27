# frozen_string_literal: true

class SocialsController < ApplicationController
  before_action :set_social, only: %i[edit update destroy]

  def new
    @social = Social.new

    render 'backend/socials/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    render 'backend/socials/edit'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @social = Social.new(social_params)

    respond_to do |format|
      if @social.save
        format.html { redirect_to backend_path, notice: 'social link created' }
      else
        format.html { redirect_to backend_path, notice: 'error' }
      end
    end
  end

  def update
    respond_to do |format|
      if @social.update(social_params)
        format.html { redirect_to backend_path, notice: 'social link updated' }
      else
        format.html { redirect_to backend_path, notice: 'failed to update' }
      end
    end
  end

  def destroy
    @social.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_path, notice: 'social link removed'
      end
    end
  end

  private

  def set_social
    @social = Social.find(params[:id])
  end

  def social_params
    params.require(:social).permit(
      :friendly_name, :url, :icon, :display, :position
    )
  end
end
