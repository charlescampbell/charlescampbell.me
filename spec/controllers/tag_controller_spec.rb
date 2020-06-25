# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TagController, type: :controller do
  let(:education) { create(:education) }

  describe '#new' do
    it 'assigns a new tag to @tag' do # Maybe think about moving the params to the create action to make testing easier
      expect { get :new, params: { education_id: education } }.to raise_error
      expect(assigns(:tag)).to be_a_new(Tag)
    end
  end

  describe '#create' do
    context 'with valid attributes' do
      it 'creates a new tag' do
        expect do
          post :create, params: {
            tag: FactoryBot.attributes_for(:tag, education_id: education)
          }
        end.to change(Tag, :count).by(1)
      end
    end

    context 'with invalid attributes' do
      it 'does not create a new tag' do
        expect do
          post :create, params: {
            tag: FactoryBot.attributes_for(:tag, colour: nil)
          }
        end.not_to change(Tag, :count)
      end
    end
  end

  describe '#destroy' do
    it 'deletes the tag' do
      tag = create(:tag)

      expect { delete :destroy, params: { id: tag.id } }
        .to change(Tag, :count).by(-1)
    end
  end
end
