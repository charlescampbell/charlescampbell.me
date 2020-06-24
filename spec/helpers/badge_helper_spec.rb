# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BadgeHelper do
  describe 'bootstrap badge' do
    let(:tool) { create(:tool) }
    let(:qualification) { create(:qualification) }
    let(:academic_year) { create(:academic_year, qualification: qualification) }
    let(:education) { create(:education, academic_year: academic_year) }
    let(:tag) { create(:tag, education: education) }

    context 'when rendering the backend tools page' do
      it 'returns a bootstrap badge link for deleting the correct tool' do
        expect(helper.linked_badge_for(tool)).to include(
          'class="badge badge-red" ' \
          'data-confirm="Are you sure you want to delete ruby?"'
        )
      end
    end

    context 'when rendering the frontend tools page' do
      it 'returns a bootstrap badge link for deleting the correct tool' do
        expect(helper.badge_for(tool)).to eq(
          "<span class='badge badge-red'>ruby</span>"
        )
      end
    end

    context 'when rendering the backend education page' do
      it 'returns a bootstrap badge for deleting the correct tag' do
        expect(helper.linked_tag_for(tag)).to include(
          'class="badge badge-red" ' \
          'data-confirm="Are you sure you want to delete ruby?"'
        )
      end
    end

    context 'when rendering the frontend education page' do
      it 'returns a boostrap badge for the correct tag' do
        expect(helper.tag_for(tag)).to eq(
          "<span class='badge badge-red'>ruby</span>"
        )
      end
    end
  end
end
