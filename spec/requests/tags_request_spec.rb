require 'rails_helper'

RSpec.describe "Tags API", type: :request do
  let!(:tags) { create_list(:tag, 10) }
  let(:tag_id) { tags.first.id }

  describe 'GET /tags' do
    before { get '/tags' }

    it 'returns tags' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /tags/:id' do
    before { get "/tags/#{tag_id}"}

    context 'when the tag exists' do
      it 'returns the tag' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(tag_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the tag does not exists' do
      let(:todo_id) { 1000 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find tag/)
      end
    end
  end

  describe 'POST /tags' do
    let(:valid_attributes) { { title: 'Ruby-on-Rails' } }

    context 'when the request is valid' do
      before { post '/tags', params: valid_attributes }

      it 'creates the tag' do
        expect(json['title']).to eq('Ruby-on-Rails')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/tags', params: { title: '' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match(/Validation failed: Title can't be blank/)
      end
    end
  end
end
