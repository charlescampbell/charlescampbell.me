# frozen_string_literal: true

FactoryBot.define do
  factory :highlight do
    title { 'Hightlight' }
    organisation { 'The World' }
    start_date { Time.now }
    end_date { Time.now + 7.days }
    description { 'This is a description' }
  end
end
