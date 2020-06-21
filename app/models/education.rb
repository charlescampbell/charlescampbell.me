# frozen_string_literal: true

class Education < ApplicationRecord
  belongs_to :academic_year
  has_many :tag
end
