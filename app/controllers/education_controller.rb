# frozen_string_literal: true

class EducationController < ApplicationController
  layout 'backend', only: %i[backend]

  before_action :set_educations, only: %i[index backend]
  before_action :set_education, only: %i[edit update destroy]

  http_basic_authenticate_with name: ENV['BACKEND_USERNAME'],
                               password: ENV['BACKEND_PASSWORD'],
                               only: %i[backend]

  def index
    render 'frontend/education/index'
  end

  def backend
    render 'backend/education/index'
  end

  def new
    @education = Education.new

    render 'backend/education/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    render 'backend/education/edit'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @education = Education.new(education_params)

    respond_to do |format|
      if @education.save
        format.html do
          redirect_to backend_education_path, notice: 'education created'
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
      if @education.update(education_params)
        format.html do
          redirect_to backend_education_path, notice: 'education updated'
        end
      else
        format.html do
          redirect_to backend_education_path, notice: 'failed to update'
        end
      end
    end
  end

  def destroy
    @education.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_education_path, notice: 'education removed'
      end
    end
  end

  private

  def set_education
    @education = Education.find(params[:id])
  end

  def set_educations
    @educations = Education.all
    @qualifications = Qualification.all
  end

  def education_params
    params.require(:education).permit(
      :academic_year_id, :unit, :description, :grade
    )
  end
end
