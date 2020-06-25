# frozen_string_literal: true

FactoryBot.define do
  factory :academic_year do
    association :qualification
    title { 'First Year' }
    grade { 'FIRST' }
  end
end
