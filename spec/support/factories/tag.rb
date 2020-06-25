# frozen_string_literal: true

FactoryBot.define do
  factory :tag do
    association :education
    tag { 'ruby' }
    colour { 'red' }
  end
end
