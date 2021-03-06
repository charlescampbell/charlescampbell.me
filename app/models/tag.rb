# frozen_string_literal: true

class Tag < ApplicationRecord
  belongs_to :education

  validates_presence_of :tag, :colour
end
