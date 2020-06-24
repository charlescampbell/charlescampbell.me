# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LinkHelper do
  describe 'active_link?' do
    context 'when the link is active' do
      it 'returns the active css class' do
        expect(helper.active_link?('host')).to eq('active')
      end
    end

    context 'when the link is inactive' do
      it 'returns nothing for the css class' do
        expect(helper.active_link?('blah')).to eq('')
      end
    end
  end

  describe 'active_home?' do
    context 'when the home link is inactive' do
      it 'returns the active css class' do
        expect(helper.active_home?).to eq('')
      end
    end
  end

  describe 'add_tag_link' do
    let(:qualification) { create(:qualification) }
    let(:academic_year) { create(:academic_year, qualification: qualification) }
    let(:education) { create(:education, academic_year: academic_year) }

    it 'returns a link for the correct tag' do
      expect(helper.add_tag_link(education)).to include(
        'class="focused-link-success" data-remote="true" href="/tag/new/'
      )
    end
  end
end
