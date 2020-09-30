require 'rails_helper'

RSpec.describe "Courses API", type: :request do
  let!(:courses) { create_list(:course, 10) }
  let(:course_id) { courses.first.id }

  describe 'GET /courses' do
    before { get '/courses' }

    it 'returns courses' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /courses/:id' do
    before { get "/courses/#{course_id}" }

    context 'when the course exists' do
      it 'returns the course' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(course_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the course does not exists' do
      let(:todo_id) { 1000 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Course/)
      end
    end
  end

  describe 'POST /courses' do
    let(:valid_attributes) { { name: 'Web Formatting 101', description: 'Leanr about web', price: 10.99 } }

    context 'when the request is valid' do
      before { post '/courses', params: valid_attributes }

      it 'creates the course' do
        expect(json['title']).to eq('Web Formatting 101')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/courses', params: { title: 'Web 101' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match(/Validation failed: Description can't be blank, Price can't be blank/)
      end
    end
  end

  describe 'PUT /courses/:id' do
    let(:valid_attributes) { { name: 'How to upload images' } }

    context 'when the record exists' do
      before { put "/courses/#{course_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /courses/:id' do
    before { delete "/courses/#{course_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
