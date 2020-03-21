# frozen_string_literal: true

class QualificationController < ApplicationController
  before_action :set_qualification, only: %i[show edit update destroy]

  def new
    @qualification = Qualification.new

    render 'backend/qualification/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    render 'backend/qualification/edit'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @qualification = Qualification.new(qualification_params)

    respond_to do |format|
      if @qualification.save
        format.html do
          redirect_to backend_education_path, notice: 'qualification created'
        end
      else
        format.html do
          redirect_to backend_education_path, notice: 'failed to create'
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @qualification.update(qualification_params)
        format.html do
          redirect_to backend_education_path, notice: 'qualification updated'
        end
      else
        format.html do
          redirect_to backend_education_path, notice: 'failed to update'
        end
      end
    end
  end

  def destroy
    @qualification.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_education_path, notice: 'qualification removed'
      end
    end
  end

  private

  def set_qualification
    @qualification = Qualification.find(params[:id])
  end

  def qualification_params
    params.require(:qualification).permit(
      :title, :organisation, :start_date, :end_date, :description, :url
    )
  end
end
