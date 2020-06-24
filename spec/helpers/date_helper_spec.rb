# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DateHelper do
  describe 'duration_for' do
    it 'returns the date in the correct format' do
      highlight = create(:highlight)

      expect(helper.duration_for(highlight)).to eq('Jun 2020 - Jul 2020')
    end
  end
end
