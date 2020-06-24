# frozen_string_literal: true

FactoryBot.define do
  factory :education do
    unit { 'The Art of Testing' }
    grade { 'FIRST' }
    description { 'RSpec and friends' }
  end
end
