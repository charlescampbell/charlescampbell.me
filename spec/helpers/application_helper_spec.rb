# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper do
  let(:qualification) { create(:qualification) }
  let(:academic_year) { create(:academic_year, qualification: qualification) }
  let(:education) { create(:education, academic_year: academic_year) }
  let(:social) { create(:social) }

  describe 'unit_title_for' do
    context 'when creating a new tag' do
      it 'returns the friendly unit title' do
        expect(helper.unit_title_for(education.id)).to eq('The Art of Testing')
      end
    end
  end

  describe 'socials' do
    it 'returns all the socials' do
      create(:social)
      expect(helper.socials).to include(social)
    end
  end

  describe 'mobile_icon?' do
    context 'when the social icon display is set to "y"' do
      it 'returns no class for the css' do
        expect(helper.mobile_icon?(social)).to eq('')
      end
    end

    context 'when the social icon display is set to "n"' do
      it 'returns the hide icon class for the css' do
        social.display = 'n'
        expect(helper.mobile_icon?(social)).to eq('hide-icon')
      end
    end
  end

  describe 'profile' do
    it 'returns the requested profile' do
      profile = create(:profile)

      expect(helper.profile('name')).to eq(profile)
    end
  end

  describe 'version' do
    it 'returns the version of the application' do
      expect(helper.version).to eq("v#{File.read('./VERSION')}")
    end
  end
end
