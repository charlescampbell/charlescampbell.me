# frozen_string_literal: true

class AcademicYear < ApplicationRecord
  belongs_to :qualification
  has_many :education
end
