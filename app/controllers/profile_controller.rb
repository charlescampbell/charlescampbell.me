# frozen_string_literal: true

class ProfileController < ApplicationController
  before_action :set_profile, only: %i[edit update destroy]

  def new
    @profile = Profile.new

    render 'backend/profile/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    render 'backend/profile/edit'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to backend_path, notice: 'profile created' }
      else
        format.html { redirect_to backend_path, notice: 'error' }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to backend_path, notice: 'profile updated' }
      else
        format.html { redirect_to backend_path, notice: 'failed to update' }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_path, notice: 'profile removed'
      end
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:title, :value)
  end
end
