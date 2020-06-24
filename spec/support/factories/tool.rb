# frozen_string_literal: true

FactoryBot.define do
  factory :tool do
    tool { 'ruby' }
    colour { 'red' }
    status { 'language' }
  end
end
